//
//  UpcomingBillRowView.swift
//  Trackizer
//
//  Created by enesozmus on 9.08.2025.
//

import SwiftUI

struct UpcomingBillRowView: View {
    @State var sObj: SubscriptionModel = SubscriptionModel(dict: [
        "name":"Spotify",
        "icon":"spotify_logo",
        "price": "5.99"
    ])
    
    var body: some View {
        HStack {
            ZStack {
                VStack {
                    Text("JUN")
                        .font(.customFont(.medium, fontSize: 10))
                        .foregroundStyle(Color.gray30)
                    
                    Text("25")
                        .font(.customFont(.semibold, fontSize: 14))
                        .foregroundStyle(.white)
                }
            }
            .frame(width: 40, height: 40)
            .background(Color.gray60.opacity(0.2))
            .overlay {
                RoundedRectangle(cornerRadius:  12)
                    .stroke(Color.gray70, lineWidth: 1)
            }
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text(sObj.name)
                .font(.customFont(.semibold, fontSize: 14))
                .foregroundStyle(.white)
            
            Spacer()
            
            Text( "$\(sObj.price)" )
                .font(.customFont(.semibold, fontSize: 14))
                .foregroundStyle(.white)
        }
        .padding(15)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 64, maxHeight: 64)
        .background(Color.gray60.opacity(0.2))
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray70, lineWidth: 1)
        }
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    UpcomingBillRowView()
}
