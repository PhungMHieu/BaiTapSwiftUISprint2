//
//  InformationHeartV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 23/7/25.
//

import SwiftUI

struct InformationHeartV: View {
    var body: some View {
        VStack {
            HStack{
                LabelTextFieldV(text: .constant(""), type: .pulse)
                LabelTextFieldV(text: .constant(""), type: .hrv)
            }
            Spacer()
            Button {
                
            } label: {
                Text("Continue")
            }
            .buttonStyle(ButtonStyleOnBoard())
        }
        .padding(16)
        .background(Color.background)
        
    }
}

#Preview {
    InformationHeartV()
}
