//
//  ControlGroupMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 5.05.24.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup("One") {
                Button("Uno") { }
                Button("Dos") { }
                Button("Tres") { }
            }
            Button("Two") { }
            Menu("Three") {
                Button("Hi") { }
                Button("Hello") { }
                Menu("How are you?") {
                    Button("Good") { }
                    Button("Bad") { }
                }
            }
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
