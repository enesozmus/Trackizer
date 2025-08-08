//
//  MainTabView.swift
//  Trackizer
//
//  Created by enesozmus on 8.08.2025.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectTab = 0
    
    var body: some View {
        ZStack {
            Text("selectTab \(selectTab)")
                .foregroundStyle(.white)
            
            if(selectTab == 0) {
                //
            }
            
            if(selectTab == 1) {
                //
            }
            
            if(selectTab == 2) {
                //
            }
            
            if(selectTab == 3) {
                //
            }
            
            VStack {
                Spacer()
                
                ZStack(alignment: .bottom) {
                    ZStack(alignment: .center) {
                        Image("bottom_bar_bg")
                            .resizable()
                            .scaledToFit()
                        
                        HStack(alignment: .center, spacing: 0) {
                            Spacer()
                            
                            Button {
                                selectTab = 0
                            } label: {
                                Image("home")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding()
                            }
                            .foregroundStyle(selectTab == 0 ? .white : Color.gray30)
                            
                            Spacer()
                            
                            Button {
                                selectTab = 1
                            } label: {
                                Image("budgets")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding()
                            }
                            .foregroundStyle(selectTab == 1 ? .white : Color.gray30)
                            
                            Rectangle()
                                .fill(.clear)
                                .frame(width: 80, height: 0)
                            
                            Button {
                                selectTab = 2
                            } label: {
                                Image("calendar")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding()
                            }
                            .foregroundStyle(selectTab == 2 ? .white : Color.gray30)
                            
                            Spacer()
                            
                            Button {
                                selectTab = 3
                            } label: {
                                Image("creditcards")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding()
                            }
                            .foregroundStyle(selectTab == 3 ? .white : Color.gray30)
                            
                            Spacer()
                        }
                    }
                    
                    Button {
                        //
                    } label: {
                        Image("center_btn")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                    }
                    .padding(.bottom, 6)
                    .shadow(color: .secondaryC.opacity(0.5), radius: 6, y: 4)
                }
            }
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
        }
        .background(Color.grayC)
        .ignoresSafeArea()
    }
}

#Preview {
    MainTabView()
}
