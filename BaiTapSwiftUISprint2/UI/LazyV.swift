//
//  LazyV.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//

import SwiftUI

struct LazyV: View {
    private var data: [healGrid] = []
    var body: some View {
        let data = [
            healGrid(icon: .pulse, title: "Heart Rate"),
            healGrid(icon: .hypertension, title: "High Blood\nPressure"),
            healGrid(icon: .stress, title: "Stress & Anxiety"),
            healGrid(icon: .energyConsumption, title: "Low Energy\nLevels")
        ]
        let columns = [
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible()),
//            GridItem(.adaptive(minimum: 80))
        ]
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(data, id:\.title) { item in
                    HealthGridItemV2(title: item.title, image: item.icon)
                }
            }
        }
        .padding(.horizontal,16)
        .background(.backgroundApp2)
//        .ignoresSafeArea(.all)
    }
}

#Preview {
    LazyV()
}
