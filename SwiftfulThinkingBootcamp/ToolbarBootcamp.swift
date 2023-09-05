//
//  ToolbarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 5.09.23.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    @State private var path: [String] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("placeholder", text: $text)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                    }
                }
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "house.fill")
                        Image(systemName: "gear")
                    }
                }
            }
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    path.append("Screen 1")
                }
                Button("Screen 2") {
                    path.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New screen: \(value)")
            }
        }
    }
}

struct ToolbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarBootcamp()
    }
}
