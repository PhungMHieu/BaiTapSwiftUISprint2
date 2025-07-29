//
//  LazyV.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//

import SwiftUI
var itemCount = 4
struct Page234V: View {
    @Binding var data:[HealGrid]
    var title:String
    var body: some View {
        let columns = [
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible()),
        ]
        VStack(spacing: 0){
            Text(title)
                .font(.system(size: 26))
                .fontWeight(.bold)
                .lineSpacing(38-UIFont.systemFont(ofSize: 26, weight: .bold).lineHeight)
                .multilineTextAlignment(.center)
                .foregroundColor(.neutral1)
                .padding(.horizontal,33)
                .padding(.bottom,24)
            ScrollView {
                LazyVGrid(columns: columns, spacing: 15) {
                    ForEach($data) {$item in
                        HealthGridItemV2(title: item.title, image: item.icon, isSelected: $item.isSelected)
                    }
                }
            }
            .padding(.horizontal,16)
            .background(.backgroundApp2)
        }
        .padding(.top,64)
    }
}

#Preview {
//    LazyV(data: .init(), title: "Hell")
//    LazyV(data: [], title: "What would you like to achieve?", isAnySelected: .constant(false))
}
