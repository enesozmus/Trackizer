//
//  HomeView.swift
//  Trackizer
//
//  Created by enesozmus on 8.08.2025.
//

import SwiftUI

struct HomeView: View {
    @State private var isSubscription = true
    @State var subscriptionArr: [SubscriptionModel] = [
        SubscriptionModel(dict: [
            "name":"Spotify",
            "icon":"spotify_logo",
            "price": "5.99"] )
        ,
        SubscriptionModel(dict: [
            "name": "YouTube Premium",
            "icon": "youtube_logo",
            "price": "18.99"] )
        ,
        SubscriptionModel(dict: [
            "name": "Microsoft OneDrive",
            "icon": "onedrive_logo",
            "price": "29.99"] )
        ,
        SubscriptionModel(dict: [
            "name": "NetFlix",
            "icon": "netflix_logo",
            "price": "15.00"] )
    ]
    
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
            
            if(isSubscription) {
                LazyVStack(spacing: 15) {
                    ForEach(subscriptionArr, id: \.id) { sObj in
                        //SubScriptionHomeRow(sObj: sObj)
                        HStack{
                            Image(sObj.icon)
                                .resizable()
                                .frame(width: 40, height: 40)
                            
                            Text(sObj.name)
                                .font(.customFont(.semibold, fontSize: 14))
                                .foregroundStyle(.white)
                            
                            Spacer()
                            
                            Text("$\(sObj.price)")
                                .font(.customFont(.semibold, fontSize: 14))
                                .foregroundStyle(.white)
                        }
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    HomeView()
}
