//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 18.09.22.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        VStack(spacing: 70) {
            Text("Hello, World!")
                .background(
    //                Color.red
    //                LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 100, height: 100, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 120, height: 120, alignment: .center)
            )
            
            Circle()
                .fill(.pink)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay {
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                .background(
                    Circle()
                        .fill(.purple)
                        .frame(width: 110, height: 110)
                )
            
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(alignment: .topLeading, content: {
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 50, height: 50)
                })
                .background(alignment: .bottomTrailing) {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 150, height: 150)
                }
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background {
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: Color(#colorLiteral(red: 0.364153713, green: 0.1976195574, blue: 0.9700934291, alpha: 0.5)), radius: 10, x: 0, y: 10)
                        .overlay(alignment: .bottomTrailing) {
                            Circle()
                                .fill(.blue)
                                .frame(width: 35, height: 35)
                                .overlay {
                                    Text("5")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                }
                                .shadow(color: Color(#colorLiteral(red: 0.364153713, green: 0.1976195574, blue: 0.9700934291, alpha: 0.5)), radius: 10, x: 5, y: 5)
                        }
                }
        }
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
