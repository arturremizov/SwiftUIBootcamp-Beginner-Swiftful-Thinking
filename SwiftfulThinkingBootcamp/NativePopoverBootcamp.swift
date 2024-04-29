//
//  NativePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 29.04.24.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good 🥳",
        "Average 🙂",
        "Very bad 😡"
    ]
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                Button("Provide feedback?") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                    VStack(alignment: .leading, spacing: 12, content: {
                        ForEach(feedbackOptions, id: \.self) { option in
                            Button(option) {
                                
                            }
                            if option != feedbackOptions.last {
                                Divider()
                            }
                        }
                    })
                    .padding(20)
                    .presentationCompactAdaptation(.popover)
                })
            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
