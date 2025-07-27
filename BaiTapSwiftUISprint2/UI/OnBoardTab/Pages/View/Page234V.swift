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
//    @State var gridState: [Bool] = Array(repeating: false, count: itemCount)
//    @Binding var isAnySelected:Bool//    var page:String
    var body: some View {
//        let data = [
//            healGrid(icon: .pulse, title: "Heart Rate"),
//            healGrid(icon: .hypertension, title: "High Blood\nPressure"),
//            healGrid(icon: .stress, title: "Stress & Anxiety"),
//            healGrid(icon: .energyConsumption, title: "Low Energy\nLevels")
//        ]
        let columns = [
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible()),
//            GridItem(.adaptive(minimum: 80))
        ]
//        isAnySelected = gridState.contains(true)
//        let
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
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach($data) {$item in
                        HealthGridItemV2(title: item.title, image: item.icon, isSelected: $item.isSelected)
                    }
                }
//                .onChange(of: gridState) { newValue in
//                    isAnySelected = newValue.contains(true)
//                }
            }
            .padding(.horizontal,16)
//            .background(isAnySelected ? Color.good:Color.brown)
//            .padding(.bottom,)
            .background(.backgroundApp2)
        }
//        .background(Color.red)
        .padding(.top,64)
        
        //        .ignoresSafeArea(.all)
    }
}

#Preview {
//    LazyV(data: .init(), title: "Hell")
//    LazyV(data: [], title: "What would you like to achieve?", isAnySelected: .constant(false))
}
