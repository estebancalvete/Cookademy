//
//  RecipeCategoryView.swift
//  Cookademy
//
//  Created by Esteban Calvete Iglesias on 18/4/22.
//

import SwiftUI

struct RecipeCategoryView: View {
    @EnvironmentObject private var recipeData: RecipeData
    
    var body: some View {
        NavigationView {
            ScrollView {
                let columns = [GridItem(), GridItem()]
                LazyVGrid(columns: columns, content: {
                    ForEach(MainInformation.Category.allCases, id: \.self) { category in
                        NavigationLink(
                            destination: RecipesListView(viewStyle: .singleCategory(category))
                                .environmentObject(recipeData),
                            label: {
                                CategoryView(category: category)
                            })
                    }
                })
            }
            .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoryView: View {
    let category: MainInformation.Category
    
    var body: some View {
        ZStack {
            Image(category.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.35)
            Text(category.rawValue)
                .font(.title)
        }
    }
}

struct RecipeCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryView()
    }
}
