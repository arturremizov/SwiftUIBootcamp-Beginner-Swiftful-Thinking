//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 6.09.23.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50.0) {
            Text("Hello, World!")
            
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .font(.caption)
            .foregroundColor(.green)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}
