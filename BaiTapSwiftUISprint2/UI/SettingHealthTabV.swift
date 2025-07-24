//
//  SettingHealthTabV.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 23/7/25.
//

import SwiftUI

struct SettingHealthTabV: View {
    @State var selection:Int = 1
    var body: some View {
        TabView(selection: $selection) {
            HealthGuruV()
                .tabItem {
                    Image(.icChartRed)
                    Text("Report")
                        .font(.system(size: 14))
                        .foregroundColor(.primaryApp)
                }
//                .overlay {
//                    Text("Report")
//                }
            SettingV()
                .tabItem {
                    Image(.icSettingRed)
                    Text("Setting")
                        .foregroundColor(.primaryApp)
                }
        }
        .accentColor(.primaryApp)
//        .overlay {
//            Text("Report")
//        }
//        .frame(height: 80)
    }
}

#Preview {
    SettingHealthTabV()
}
