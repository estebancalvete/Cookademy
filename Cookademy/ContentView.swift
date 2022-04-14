//
//  ContentView.swift
//  Cookademy
//
//  Created by Esteban Calvete Iglesias on 14/4/22.
//

import SwiftUI

struct ContentView: View {
    let myIngredient = Ingredient(name: "Sugar", quantity: 2.0, unit: .tbs)
    let mySecondIngredient = Ingredient(name: "Salt", quantity: 1.0, unit: .tsp)
    let myThirdIngredient = Ingredient(name: "Apple", quantity: 2.0, unit: .none)
    let myFourthIngredient = Ingredient(name: "Banana", quantity: 1.0, unit: .none)
    
    var body: some View {
        Text(myIngredient.description)
            .padding()
        Text(mySecondIngredient.description)
            .padding()
        Text(myThirdIngredient.description)
            .padding()
        Text(myFourthIngredient.description)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
