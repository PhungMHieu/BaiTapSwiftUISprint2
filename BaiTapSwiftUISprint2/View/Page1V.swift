//
//  Page1V.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//

import SwiftUI

struct Page1V: View {
    var body: some View {
        VStack(spacing: 0) {
//            let font = Font.system(size: 16)
//            print(font.)
                Text("Health Plan Pro")
                .font(.system(size: 26,weight: .bold))
                .foregroundStyle(.neutral1)
                .padding(.bottom, 8)
                .padding(.top, 36)
            Text("Providing workout routines and health\n information to support well-being.")
                .font(.system(size: 16,weight: .medium))
                .foregroundStyle(.neutral3)
                .multilineTextAlignment(.center)
                .lineSpacing(24-UIFont.systemFont(ofSize: 16, weight: .medium).lineHeight)
//                .lineSpacing(24-systemFontSize)
                .padding(.horizontal,24)
                .padding(.top, 8)
            Image(.phone)
                .resizable()
                .scaledToFit()
                .padding(.top,40)
                .padding(.leading, 30)
                .padding(.trailing, 32)
            Spacer()
//            Button {
////                let font = UIFont.systemFont(ofSize: 16)
////                print("lineHeight: \(font.lineHeight)")
////                UIFont.preferredFont(forTextStyle: .body).leading  // returns ~1.712
////                print("Button was tapped")
//            } label: {
//                Text("Continue")
//            }
//            .buttonStyle(ButtonStyleOnBoard())
        }
        .foregroundStyle(.backlground1)
    }
}

#Preview {
    Page1V()
}
