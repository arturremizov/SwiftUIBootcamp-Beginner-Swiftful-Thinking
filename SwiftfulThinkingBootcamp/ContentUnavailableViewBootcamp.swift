//
//  ContentUnavailableViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 5.05.24.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        if #available(iOS 17.0, *) {
//            ContentUnavailableView.search(text: "abc")
            ContentUnavailableView(
                "No Internet Connection",
                systemImage: "wifi.slash",
                description: Text("Please connect to the internet and try again."))
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
