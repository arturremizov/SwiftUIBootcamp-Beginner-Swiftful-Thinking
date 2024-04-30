//
//  AnyLayoutBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 30.04.24.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    var body: some View {
        VStack(spacing: 12) {
            Text("H: \(horizontalSizeClass.debugDescription)")
            Text("V: \(verticalSizeClass.debugDescription)")
            
            let layout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            
//            if horizontalSizeClass == .compact {
//                VStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            } else {
//                HStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            }
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
