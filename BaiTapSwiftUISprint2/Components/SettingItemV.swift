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
//            .padding()
//            .padding(.top,16)
//            .frame(height: 60)
//            .padding(0)
//            Divider().background(Color(.accentLine))
//                .padding(.trailing,16)
//                .padding(.leading,52)
//                .padding(.bottom,0)
//                .padding(.top,18)
//                .padding(0)
//                .padding()
//                .padding(0)
//                .frame(height: 0.s5)
//                .frame(height: 5)
//                .padding(.leading,52)
//                .padding(.trailing,16)
//                .frame(height: 10)
//                .frame(maxWidth: .infinity)
////                .padding(0)
        }
        .frame(height: 60)
//        .padding(0)
        .background(.neutral5)
//        .cornerRadius(16)
    }
}

#Preview {
    SettingItemV(title: "Profile", image: .icProfileCircle)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
}
