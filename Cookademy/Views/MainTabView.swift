//
//  MainTabView.swift
//  Cookademy
//
//  Created by Esteban Calvete Iglesias on 22/4/22.
//

import SwiftUI

struct MainTabView: View {
    @StateObject var recipeData = RecipeData()
    
    var body: some View {
        TabView {
            RecipeCategoryView()
                .tabItem { Label("Recipes", systemImage: "list.dash")}
            NavigationView {
                RecipesListView(viewStyle: .favorites)
            }.tabItem { Label("Favorites", systemImage: "heart.fill")}
            SettingsView()
                .tabItem { Label("Settings", systemImage: "gear")}
        }
        .environmentObject(recipeData)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
