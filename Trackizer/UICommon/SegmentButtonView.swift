//
//  SegmentButtonView.swift
//  Trackizer
//
//  Created by enesozmus on 8.08.2025.
//

import SwiftUI

struct SegmentButtonView: View {
    @State var title: String = "Title"
    var isActive: Bool = false
    var onPressed: ( ()->())?
    
    var body: some View {
        Button {
            onPressed?()
        } label: {
            Text(title)
                .font(.customFont(.semibold, fontSize: 12))
        }
        .foregroundStyle( isActive ? .white : Color.gray30 )
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 42, maxHeight: 42)
        
        .background(Color.gray60.opacity( isActive ? 0.2 : 0.0 ))
        .overlay {
            RoundedRectangle(cornerRadius:  12)
                .stroke( isActive ? Color.gray70 : .clear, lineWidth: 1)
        }
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    SegmentButtonView()
}
