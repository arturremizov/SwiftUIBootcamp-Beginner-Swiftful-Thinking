//
//  NavigationStack-iOS16.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 21.09.22.
//

import SwiftUI

struct ContentCreator: Identifiable, Hashable {
    let id = UUID()
    let name: String
    
    static let preview: [ContentCreator] = [
        .init(name:"Chris"),
        .init(name:"Paul"),
        .init(name:"Vincent"),
        .init(name:"Mark"),
        .init(name:"Pedro")
    ]
}

struct NavigationStack___: View {
    
    @State private var contentCreators: [ContentCreator] = ContentCreator.preview
    @State private var creatorStack: [ContentCreator] = []
    
    var body: some View {
        NavigationStack(path: $creatorStack) {
            
            VStack {
                
                List(contentCreators) { creator in
                    NavigationLink(creator.name, value: creator)
                }
                .navigationDestination(for: ContentCreator.self) { creator in
                    VStack {
                        Text(creator.name)
                        
                        Button("Pop to root") {
                            creatorStack = []
                        }
                    }
                }
                
                Button("Navigate 3 times") {
                    creatorStack = [contentCreators[0], contentCreators[1], contentCreators[2]]
                }
            }
        }
    }
}

struct NavigationStack____Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack___()
    }
}
