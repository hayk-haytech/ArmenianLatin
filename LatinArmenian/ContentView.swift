//
//  ContentView.swift
//  LatinArmenian
//
//  Created by Hayk Tamazian on 09/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    
    var body: some View {
        TextField(
            "User name (email address)",
            text: $username
        )

        Text(username)
        
        Text(String(isKeyboardEnabled()))
    }
    
    func isKeyboardEnabled() -> Bool {
        guard let keyboards = UserDefaults.standard.object(forKey: "AppleKeyboards") as? [String] else {
            return false
        }
        return keyboards.contains("haytech.LatinArmenian.LatinArmenianKeyboard")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
