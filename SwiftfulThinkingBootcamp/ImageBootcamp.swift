//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 18.09.22.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("google")
            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 200)
            .foregroundColor(.green)
//            .cornerRadius(150)
//            .clipShape(
//                Circle()
////                RoundedRectangle(cornerRadius: 25)
////                Ellipse()
//            )
            
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
