//
//  RoundTextFieldView.swift
//  Trackizer
//
//  Created by enesozmus on 8.08.2025.
//

import SwiftUI

struct RoundTextFieldView: View {
    @State var title: String = "Title"
    @Binding var text: String
    @State var keyboardType:  UIKeyboardType = .default
    var textAlign:Alignment  = .leading
    var isPassword: Bool = false
    
    var body: some View {
        VStack {
            Text(title)
                .multilineTextAlignment(.leading)
                .font(.customFont(.regular, fontSize: 14))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: textAlign)
                .foregroundStyle(Color.gray50)
                .padding(.bottom, 4)
            
            if(isPassword) {
                SecureField("", text: $text)
                    .padding(15)
                    .frame(height: 48)
                    .overlay {
                        RoundedRectangle(cornerRadius:  15)
                            .stroke(Color.gray70, lineWidth: 1)
                    }
                    .foregroundStyle(.white)
                    .background(Color.gray60.opacity(0.05))
                    .cornerRadius(15)
            } else {
                TextField("", text: $text)
                    .padding(15)
                    .keyboardType(keyboardType)
                    .frame(height: 48)
                    .overlay {
                        RoundedRectangle(cornerRadius:  15)
                            .stroke(Color.gray70, lineWidth: 1)
                    }
                    .foregroundStyle(.white)
                    .background(Color.gray60.opacity(0.05))
                    .cornerRadius(15)
            }
        }
    }
}

struct RoundTextField_Previews: PreviewProvider {
    @State static var txt: String = ""
    static var previews: some View {
        RoundTextFieldView(text: $txt)
    }
}
