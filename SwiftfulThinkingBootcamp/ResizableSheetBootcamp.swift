//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 5.09.23.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    @State private var isShowingSheet: Bool = false
    @State private var detent: PresentationDetent = .large
    var body: some View {
        Button("Click me!") {
            isShowingSheet.toggle()
        }
        .sheet(isPresented: $isShowingSheet) {
            MyNextView(detent: $detent)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.1), .height(300), .medium, .large])
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        }
    }
}

struct MyNextView: View {
    
    @Binding var detent: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack(spacing: 20) {
                Button("20%") {
                    detent = .fraction(0.2)
                }
                Button("MEDIUM") {
                    detent = .medium
                }
                Button("600 PX") {
                    detent = .height(600)
                }
                Button("LARGE") {
                    detent = .large
                }
            }
        }
        .presentationDetents([.fraction(0.2), .medium, .height(600), .large], selection: $detent)
        .presentationDragIndicator(.hidden)
        .presentationBackgroundInteraction(.enabled)
    }
}

struct ResizableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetBootcamp()
    }
}
