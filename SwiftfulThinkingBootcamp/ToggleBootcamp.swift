//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 23.09.22.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status: ")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            
            Toggle(isOn: $toggleIsOn) {
               Text("Change Status")
            }
            .tint(.purple)
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
