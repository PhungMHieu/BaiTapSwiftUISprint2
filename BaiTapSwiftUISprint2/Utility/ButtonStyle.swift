//
//  ButtonStyle.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 21/7/25.
//

import SwiftUI

//import SwiftUI

struct ButtonStyleOnBoard: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .font(.system(size: 18))
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity)
            .frame(maxHeight: 56)
            .background(.primaryApp)
            .cornerRadius(16)
            .padding(.horizontal,16)
            .padding(.bottom, 16)

    }
        
}
