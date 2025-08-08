//
//  SocialSignUpView.swift
//  Trackizer
//
//  Created by enesozmus on 8.08.2025.
//

import SwiftUI

struct SocialSignUpView: View {
    @State private var showSignUp: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 8)
                
                Spacer()
                
                
                Button {
                    //
                } label: {
                    ZStack {
                        Image("apple_btn")
                            .resizable()
                            .scaledToFill()
                            .padding(.horizontal, 20)
                            .frame(width: .screenWidth, height: 48)
                        
                        HStack {
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                            
                            Text("Sign up with Apple")
                                .font(.customFont(.semibold, fontSize: 14))
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .foregroundStyle(.white)
                .shadow(color: .black.opacity(0.3), radius: 5, y: 3)
                .padding(.bottom, 15)
                
                
                Button {
                    //
                } label: {
                    ZStack {
                        Image("google_btn")
                            .resizable()
                            .scaledToFill()
                            .padding(.horizontal, 20)
                            .frame(width: .screenWidth, height: 48)
                        
                        HStack {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                            
                            Text("Sign up with Google")
                                .font(.customFont(.semibold, fontSize: 14))
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .foregroundStyle(Color.grayC)
                .shadow(color: .white.opacity(0.3), radius: 5, y: 3)
                .padding(.bottom, 15)
                
                
                Button {
                    //
                } label: {
                    ZStack {
                        Image("fb_btn")
                            .resizable()
                            .scaledToFill()
                            .padding(.horizontal, 20)
                            .frame(width: .screenWidth, height: 48)
                        
                        HStack {
                            Image("fb")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                            
                            Text("Sign up with Facebook")
                                .font(.customFont(.semibold, fontSize: 14))
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .foregroundStyle(.white)
                .shadow(color: .blue.opacity(0.3), radius: 5, y: 3)
                .padding(.bottom, 25)
                
                Text("or")
                    .multilineTextAlignment(.center)
                    .font(.customFont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundStyle(.white)
                    .padding(.bottom, 25)
                
                SecondaryButtonView(title: "Sign up with E-mail", onPressed: {
                    showSignUp.toggle()
                })
                .padding(.bottom, 20)
                .navigationDestination(isPresented: $showSignUp, destination: {
                    SignUpView()
                })
                
                Text("By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.")
                    .multilineTextAlignment(.center)
                    .font(.customFont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundStyle(Color.gray60)
                    .padding(.bottom, .bottomInsets + 8)
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
    SocialSignUpView()
}
