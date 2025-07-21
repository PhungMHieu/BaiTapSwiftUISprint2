//
//  LazyV.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//

import SwiftUI

struct LazyV: View {
    var body: some View {
        let data = [
            healGrid(icon: .pulse, title: "Heart Rate"),
            healGrid(icon: .hypertension, title: "High Blood Pressure"),
            healGrid(icon: .stress, title: "Stress & Anxiety"),
            healGrid(icon: .energyConsumption, title: "Low Energy Levels")
        ]
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
//            GridItem(.adaptive(minimum: 80))
        ]
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(data, id:\.title) { item in
                    HealthGridItemV2(title: item.title, image: item.icon)
//                    Spacer()
//                        .padding()
//                        .padding(16)
                }
//                .padding(0)
            }
//            .frame(maxHeight: 606)
//            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.backgroundApp2)
//            .padding(.horizontal, 16)
//            .padding()
        }
//        .padding(.horizontal,16)
        .background(.backgroundApp2)
        
    }
}

#Preview {
    LazyV()
}
