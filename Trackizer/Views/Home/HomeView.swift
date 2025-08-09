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
                
                ZStack{
                    ArcShape()
                        .foregroundStyle(.gray.opacity(0.2))
                    
                    ArcShape(start: 0, end: 230)
                        .foregroundStyle(Color.secondaryC)
                        .shadow(color: .secondaryC.opacity(0.5), radius: 7)
                }
                .frame(width: .widthPer(per: 0.72), height: .widthPer(per: 0.72) )
                .padding(.bottom, 18)
                
                VStack(spacing: .widthPer(per: 0.07)){
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: .widthPer(per: 0.25) )
                    
                    Text("$1,235")
                        .font(.customFont(.bold, fontSize: 40))
                        .foregroundStyle(.white)
                    
                    Text("This month bills")
                        .font(.customFont(.semibold, fontSize: 12))
                        .foregroundStyle(Color.gray40)
                    
                    Button {
                        //
                    } label: {
                        Text("See your budget")
                            .font(.customFont(.semibold, fontSize: 12))
                    }
                    .foregroundStyle( .white )
                    .padding(10)
                    .background(Color.gray60.opacity(0.2))
                    .overlay {
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.gray70, lineWidth: 1)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                
                VStack{
                    
                    Spacer()
                    
                    HStack{
                        StatusButtonView(title: "Active subs", value: "12") {
                            
                        }
                        
                        StatusButtonView(title: "highest subs", value: "$19.99",color: .primary10) {
                        }
                        
                        StatusButtonView(title: "Lowest subs", value: "$5.99",color: .secondaryG) {
                        }
                    }
                }
                .padding()
            }
            .frame(width: .screenWidth, height: .widthPer(per: 1.1) )
            
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
                        SubScriptionHomeRowView(sObj: sObj)
                    }
                }
                .padding(.horizontal, 20)
            }
            
            if(!isSubscription) {
                LazyVStack(spacing: 15) {
                    ForEach(subscriptionArr, id: \.id) { sObj in
                        UpcomingBillRowView(sObj: sObj)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
        .background(Color.grayC)
        .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
