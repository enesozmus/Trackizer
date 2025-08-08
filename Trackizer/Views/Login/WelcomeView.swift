//
//  WelcomeView.swift
//  Trackizer
//
//  Created by enesozmus on 8.08.2025.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showSignIn: Bool = false
    @State private var showSignUp: Bool = false
    
    var body: some View {
        ZStack {
            Image("welcome_screen")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack {
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 8)
                
                Spacer()
                
                Text("Take charge of your financial future and start achieving your money goals! 💪💵")
                    .multilineTextAlignment(.center)
                    .font(.customFont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundStyle(.white)
                    .padding(.bottom, 30)
                
                PrimaryButtonView(title: "Get Started", onPressed: {
                    showSignUp.toggle()
                })
                .padding(.bottom, 15)
                .navigationDestination(isPresented: $showSignUp) {
                    SocialSignUpView()
                }
                
                SecondaryButtonView(title: "I have an account", onPressed: {
                    showSignIn.toggle()
                })
                .padding(.bottom, .bottomInsets)
                .navigationDestination(isPresented: $showSignIn) {
                    SignInView()
                }
            }
        }
        .navigationTitle("")
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
