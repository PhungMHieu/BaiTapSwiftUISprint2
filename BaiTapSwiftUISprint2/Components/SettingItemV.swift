//
//  SettingItemV.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 23/7/25.
//

import SwiftUI

struct SettingItemV: View {
    var title: String
    var image: ImageResource
    var body: some View {
        VStack(spacing: 12) {
            HStack(spacing: 12){
                Image(image)
                    .padding(.leading,16)
                Text(title)
                Spacer()
                Image(.icRight2)
                    .padding(.trailing,16)
            }
        }
        .frame(height: 60)
        .background(.neutral5)
    }
}

#Preview {
    SettingItemV(title: "Profile", image: .icProfileCircle)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
}
