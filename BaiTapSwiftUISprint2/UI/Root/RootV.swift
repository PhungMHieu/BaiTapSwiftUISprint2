//
//  RootV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 24/7/25.
//

import SwiftUI

struct RootV: View {
    @StateObject private var navigationManager = NavigationManager()
    var body: some View {
        NavigationStack(path: $navigationManager.path){
            SettingHealthTabV()
//            SettingV()
                .navigationDestination(for: Screen.self) { screen in
                    switch screen {
                    case .setting: SettingV()
                    case .information: InformationV()
                    case .profile: ProfileV()
                    }
                }
        }
        .environmentObject(navigationManager)
    }
}

#Preview {
    RootV()
}
