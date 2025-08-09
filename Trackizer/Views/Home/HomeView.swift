//
//  HomeView.swift
//  Trackizer
//
//  Created by enesozmus on 8.08.2025.
//

import SwiftUI

struct HomeView: View {
    @State private var isSubscription = true
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .center) {
                Rectangle()
                    .foregroundStyle(Color.gray70.opacity(0.5))
                    .frame(width: .screenWidth, height: .widthPer(per: 1.1) )
                    .background(RoundedRectangle(cornerRadius: 25))
                
                Image("home_bg")
                    .resizable()
                    .scaledToFit()
            }
            
            HStack {
                
                SegmentButtonView(title: "Your Subscription", isActive: isSubscription) {
                    isSubscription.toggle()
                }
                
                SegmentButtonView(title: "Upcomming bills", isActive: !isSubscription) {
                    isSubscription.toggle()
                }
                
            }
            .padding(8)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50)
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
