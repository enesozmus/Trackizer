//
//  SignUpView.swift
//  Trackizer
//
//  Created by enesozmus on 8.08.2025.
//

import SwiftUI

struct SignUpView: View {
    @State private var txtEmail: String = ""
    @State private var txtPassword: String = ""
    @State private var showSignIn: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5) )
                    .padding(.top, .topInsets + 8)
                
                
                Spacer()
                
                HStack {
                    Rectangle()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                        .padding(.horizontal, 1)
                    
                    Rectangle()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                        .padding(.horizontal, 1)
                    
                    Rectangle()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                        .padding(.horizontal, 1)
                    
                    Rectangle()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                        .padding(.horizontal, 1)
                }
                .padding(.horizontal, 20)
                .foregroundStyle(Color.gray70)
                .padding(.bottom, 20)
                
                Text("Use 8 or more characters with a mix of letters,\nnumbers & symbols.")
                    .multilineTextAlignment(.leading)
                    .font(.customFont(.regular, fontSize: 14))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    .foregroundStyle(Color.gray50)
                    .padding(.bottom, 20)
                
                PrimaryButtonView(title: "Get Started, it's free!", onPressed: {
                    
                })
                
                Spacer()
                
                Text("Do you have already an account?")
                    .multilineTextAlignment(.center)
                    .font(.customFont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundStyle(.white)
                    .padding(.bottom, 20)
                
                SecondaryButtonView(title: "Sign In", onPressed: {
                    //
                })
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
    SignUpView()
}
