//
//  LabelTextFieldV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 23/7/25.
//

import SwiftUI

struct LabelTextFieldV: View {
    //    var body: some View {
    //        @Binding var textField: String
    //        var type:  InformationNameType
    //        var onChangeText: ((InformationNameType, String) -> Void)?
    @Binding var text: String
    var type: LabelTextFieldType
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(type.title)
                .font(.system(size: 16))
                .fontWeight(.medium)
                .lineSpacing(24-UIFont.systemFont(ofSize: 16, weight: .medium).lineHeight)
                .foregroundColor(.neutral15)
            TextField(text: $text, label: {
                Text("\(type.placeholder)")
                    .font(.system(size: 16))
                    .foregroundColor(.neutral3)
            })
            .frame(height: 52)
            .padding(.horizontal,12)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white)
            )
            .cornerRadius(16)
                
        }
        
    }
}

#Preview {
    LabelTextFieldV(text: .constant(""), type: .firstName)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.background)
//    LabelTextFieldV(text: "Hello world", type: .firstName)
}
