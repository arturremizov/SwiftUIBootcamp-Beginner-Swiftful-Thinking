//
//  ContentView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 17.09.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .foregroundColor(Color.blue)
                .imageScale(.large)
                
            Text("Hello, everyone!")
                .font(.title)
                .fontWeight(.black)
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
