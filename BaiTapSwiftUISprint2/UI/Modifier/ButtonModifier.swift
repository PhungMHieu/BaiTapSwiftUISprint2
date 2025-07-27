//
//  ButtonModifier.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 26/7/25.
//

import SwiftUI

struct ButtonOnBoardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: 18))
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity)
            .frame(maxHeight: 56)
    }
}
struct ButtonInformationModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .modifier(ButtonOnBoardModifier())
            .background(.primaryApp)
            .cornerRadius(16)
            .padding(.bottom, 16)
    }
}
