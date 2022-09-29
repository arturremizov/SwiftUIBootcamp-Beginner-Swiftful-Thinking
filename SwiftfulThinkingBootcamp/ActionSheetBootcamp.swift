//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 22.09.22.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .tint(.primary)
                
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .confirmationDialog(
            "What would you like to do?",
            isPresented: $showActionSheet,
            titleVisibility: .visible,
            actions: {
                Button("Share", role: .none, action: {})
                Button("Report", role: .destructive, action: {})
                if actionSheetOption == .isMyPost {
                    Button("Delete", role: .destructive, action: {})
                }
//                Button("Cancel", role: .cancel) {}
        },
            message: {
            Text("This is the message!")
        })
//        .confirmationDialog("This is the title!",
//                            isPresented: $showActionSheet,
//                            titleVisibility: .visible) {
//        }
//
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
