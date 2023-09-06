//
//  MenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 6.09.23.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        Menu("Click me!") {
            Button("One") { }
            Button("Two") { }
            Button("Three") { }
            Button("Four") { }
        }
    }
}

struct MenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MenuBootcamp()
    }
}
