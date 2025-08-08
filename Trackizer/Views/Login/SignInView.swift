//
//  SignInView.swift
//  Trackizer
//
//  Created by enesozmus on 8.08.2025.
//

import SwiftUI

struct SignInView: View {
    @State private var txtLogin: String = ""
    @State private var txtPassword: String = ""
    @State private var isRemember: Bool = false
    @State private var showSignUp: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5) )
                    .padding(.top, .topInsets + 8)
                
                
                Spacer()
                
                RoundTextFieldView(title: "Login", text: $txtLogin, keyboardType: .emailAddress)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 15)
                
                
                
                RoundTextFieldView(title: "Passowrd", text: $txtPassword, isPassword: true)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                
                HStack {
                    Button {
                        isRemember.toggle()
                    } label: {
                        HStack {
                            Image(systemName: isRemember ? "checkmark.square" : "square")
                                .resizable()
                                .frame(width: 20, height: 20)
                            
                            Text("Forgot Password")
                                .multilineTextAlignment(.center)
                                .font(.customFont(.regular, fontSize: 14))
                        }
                    }
                    .foregroundStyle(Color.gray50)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Forgot Password")
                            .multilineTextAlignment(.center)
                            .font(.customFont(.regular, fontSize: 14))
                        
                    }
                    .foregroundStyle(Color.gray50)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 15)
                
                PrimaryButtonView(title: "Sign In", onPressed: {
                    
                })
                
                Spacer()
                
                Text("if you don't have an account yet?")
                    .multilineTextAlignment(.center)
                    .font(.customFont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundStyle(.white)
                    .padding(.bottom, 20)
                
                SecondaryButtonView(title: "Sign Up", onPressed: {
                    showSignUp.toggle()
                })
                .padding(.bottom, .bottomInsets + 8)
                .navigationDestination(isPresented: $showSignUp) {
                    SignUpView()
                }
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
        .background(Color.grayC)
    }
}

#Preview {
    SignInView()
}
