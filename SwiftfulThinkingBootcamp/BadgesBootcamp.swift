//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 27.09.22.
//

import SwiftUI

// List
// TabView

struct BadgesBootcamp: View {
    var body: some View {
        TabView {
            List(content: {
                Text("Hello, world!")
                    .badge("NEW ITEMS!")
                Text("Hello, world!")
                    .badge(5)
                Text("Hello, world!")
                Text("Hello, world!")
            })
            .tabItem {
                Image(systemName: "heart.fill")
                Text("Hello")
            }
            .badge("NEW")
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge(5)
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
