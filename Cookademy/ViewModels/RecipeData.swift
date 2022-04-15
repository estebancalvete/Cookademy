//
//  RecipeData.swift
//  Cookademy
//
//  Created by Esteban Calvete Iglesias on 14/4/22.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
