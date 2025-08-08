//
//  SecondaryButtonView.swift
//  Trackizer
//
//  Created by enesozmus on 8.08.2025.
//

import SwiftUI

struct SecondaryButtonView: View {
    @State var title: String = "Title"
    var onPressed: (()->())?
    
    var body: some View {
        Button {
            onPressed?()
        } label: {
            ZStack {
                Image("secondary_btn")
                    .resizable()
                    .scaledToFill()
                    .padding(.horizontal, 20)
                    .frame(width: .infinity, height: 48)
                
                Text(title)
                    .font(.customFont(.semibold, fontSize: 14))
                    .padding(.horizontal, 20)
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    SecondaryButtonView()
}
