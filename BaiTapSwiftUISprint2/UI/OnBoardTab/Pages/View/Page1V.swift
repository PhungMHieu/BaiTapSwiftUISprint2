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
                .padding(.horizontal,24)
                .padding(.top, 8)
            Image(.phone)
                .resizable()
                .scaledToFit()
                .padding(.top,40)
                .padding(.leading, 30)
                .padding(.trailing, 32)
            Spacer()
        }
        .background(Color.background)
    }
}

#Preview {
    Page1V()
}
