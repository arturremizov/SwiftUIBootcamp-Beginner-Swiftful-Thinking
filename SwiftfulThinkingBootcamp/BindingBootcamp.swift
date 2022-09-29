//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 20.09.22.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var background: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            background
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(background: $background, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var background: Color
    @State var buttonColor: Color = .blue
    @Binding var title: String
    
    var body: some View {
        Button {
            background = .orange
            buttonColor = .pink
            title = "NEW TITLE!!!"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
