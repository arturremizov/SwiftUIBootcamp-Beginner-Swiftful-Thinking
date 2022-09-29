//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 26.09.22.
//

import SwiftUI

enum OnboardingState: Int {
    case welcomeScreen
    case addName
    case addAge
    case addGender
}

struct OnboardingView: View {
    
    @State var onboardingState: OnboardingState = .welcomeScreen
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    // Onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var isCurrentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case .welcomeScreen:
                    welcomeSection
                        .transition(transition)
                case .addName:
                    addNameSection
                        .transition(transition)
                case .addAge:
                    addAgeSection
                        .transition(transition)
                case .addGender:
                    addGenderSection
                        .transition(transition)
                }
            }
            // buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(alertTitle, isPresented: $showAlert) { }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(.purple)
    }
}

// MARK: - Components
extension OnboardingView {
    
    private var bottomButton: some View {
        
        let text: String
        switch onboardingState {
        case .welcomeScreen:
            text = "SIGN UP"
        case .addGender:
            text = "FINISH"
        default:
            text = "NEXT"
        }
        
        return Text(text)
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .animation(nil, value: onboardingState)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            
            Spacer()
            
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(alignment: .bottom) {
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                }
            
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            
            Spacer()
          
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            
            Spacer()
          
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Text(String(format: "%.0f", age))
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            
            Spacer()
          
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Picker(selection: $gender) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")
            } label: {
//                    Text("Select Gender")
//                        .font(.headline)
//                        .foregroundColor(.purple)
//                        .frame(height: 55)
            }
            .frame(height: 55)
            .pickerStyle(.menu)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .tint(.purple)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: Finctions
extension OnboardingView {
    
    private func handleNextButtonPressed() {
        
        // CHECK INPUTS
        switch onboardingState {
        case .addName:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long! 😩")
                return
            }
        case .addGender:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward! 😳")
                return
            }
        default:
            break
        }
        
        // GO TO NEXT SECTION
        if onboardingState == .addGender {
            signIn()
        } else {
            withAnimation(.spring()) {
                let rawValue = onboardingState.rawValue
                guard let newOboardingState = OnboardingState(rawValue: rawValue + 1) else { return }
                onboardingState = newOboardingState
            }
        }
    }
    
    private func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            isCurrentUserSignedIn = true
        }
    }
    
    private func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
