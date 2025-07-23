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
        VStack(alignment: .leading, spacing: 8.0) {
            Text(type.title)
            TextField(type.placeholder, text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

//#Preview {
//    LabelTextFieldV()
//}
