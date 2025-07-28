//
//  SettingHealthTabV.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 23/7/25.
//

import SwiftUI

struct SettingHealthTabV: View {
    @Binding var selection:Int
    @EnvironmentObject var navi: NavigationManager
    var body: some View {
        TabView(selection: $selection) {
            HealthGuruV()
                .tabItem {
                    Image(selection == 1 ? .icChartRed : .icChart)
                    Text("Report")
                }
                .tag(1)
            SettingV()
                .tabItem {
                    Image(selection == 2 ? .icSettingRed : .icSetting)
                    Text("Setting")
                }
                .tag(2)
        }
    }
}

#Preview {
    SettingHealthTabV(selection: .constant(1))
}
