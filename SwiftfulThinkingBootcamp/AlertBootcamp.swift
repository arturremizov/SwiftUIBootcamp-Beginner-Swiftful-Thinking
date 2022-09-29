//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 22.09.22.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = .yellow
    
    enum MyAlerts {
        case success
        case error
        
        var title: String {
            switch self {
            case .error:
                return "There was an error!"
            case .success:
                return "This was a success!"
            }
        }
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("BUTTON 1") {
                    alertType = .error
//                    alertTitle = "Error uploading video"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
               
                Button("BUTTON 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video 🥳"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
            }
            .alert(alertType?.title ?? "#ERROR#", isPresented: $showAlert) {
                if alertType == .success {
                    Button("OK", role: .none) {
                        backgroundColor = .green
                    }
                }
            }
//            .alert(alertTitle, isPresented: $showAlert) {
//                Button("OK", role: .none) { }
//            } message: {
//                Text(alertMessage)
//            }
//            .alert("This is the title", isPresented: $showAlert) {
//                Button("Delete", role: .destructive) {
//                    backgroundColor = .red
//                }
//                Button("Cancel", role: .cancel) {}
//            } message: {
//                Text("Here we will describe the error.")
//            }
    //        .alert("There was an error!", isPresented: $showAlert) {
    //
    //        }
        }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
