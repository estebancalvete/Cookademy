//
//  ModifyRecipeView.swift
//  Cookademy
//
//  Created by Esteban Calvete Iglesias on 18/4/22.
//

import SwiftUI

struct ModifyRecipeView: View {
    @Binding var recipe: Recipe
    @State private var section = Selection.main
    
    var body: some View {
        VStack {
            Picker("Select recipe component", selection: $section) {
                Text("Main Info").tag(Selection.main)
                Text("Ingredients").tag(Selection.ingredients)
                Text("Directions").tag(Selection.directions)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            switch section {
            case .main:
                ModifyMainInformationView(mainInformation: $recipe.mainInformation)
            case .ingredients:
                ModifyIngredientsView(ingredients: $recipe.ingredients)
            case .directions:
                Text("Directions Editor")
            }
            Spacer()
        }
    }
}

enum Selection {
    case main, ingredients, directions
}

struct ModifyRecipeView_Previews: PreviewProvider {
    @State static var recipe = Recipe()
    static var previews: some View {
        ModifyRecipeView(recipe: $recipe)
    }
}
