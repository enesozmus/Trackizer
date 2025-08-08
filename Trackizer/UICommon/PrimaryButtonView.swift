//
//  PrimaryButtonView.swift
//  Trackizer
//
//  Created by enesozmus on 8.08.2025.
//

import SwiftUI

struct PrimaryButtonView: View {
    @State var title: String = "Title"
    var onPressed: (()->())?
    
    var body: some View {
        Button {
            onPressed?()
        } label: {
            ZStack {
                Image("primary_btn")
                    .resizable()
                    .scaledToFill()
                    .padding(.horizontal, 20)
                    .frame(width: .screenWidth, height: 48)
                
                Text(title)
                    .font(.customFont(.semibold, fontSize: 14))
                    .padding(.horizontal, 20)
            }
        }
        .foregroundStyle(.white)
        .shadow(color: .secondaryC.opacity(0.3), radius: 5, y:3)
    }
}

#Preview {
    PrimaryButtonView()
}
