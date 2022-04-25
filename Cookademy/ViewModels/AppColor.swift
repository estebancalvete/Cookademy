//
//  AppColor.swift
//  Cookademy
//
//  Created by Esteban Calvete Iglesias on 15/4/22.
//

import SwiftUI

struct AppColor {
    static let background: Color = Color(.sRGB, red: 228/255, green: 235/255, blue: 250/255, opacity: 1)
    static let foreground: Color = Color(.sRGB, red: 118/255, green: 119/255, blue: 231/255, opacity: 1)
}


// To make a Color object persistant using the @AppStorage property wrapper we need to make it conform to RawRepresentable. With the initialiser we transform the rawValue that is a String to a Color type. And we have a rawValue property that transofrms a Color object into a String.
extension Color: RawRepresentable {
    public init?(rawValue: String) {
        do {
            let encodedData = rawValue.data(using: .utf8)!
            let components = try JSONDecoder().decode([Double].self, from: encodedData)
            self = Color( red: components[0],
                         green: components[1],
                         blue: components[2],
                         opacity: components[3])
        }
        catch {
            return nil
        }
    }
    
    public var rawValue: String {
        guard let cgFloatComponents = UIColor(self).cgColor.components else { return "" }
        let doubleComponents = cgFloatComponents.map { Double($0) }
        do {
            let encodedComponents = try JSONEncoder().encode(doubleComponents)
            return String(data: encodedComponents, encoding: .utf8) ?? ""
        }
        catch {
            return ""
        }
    }
}
