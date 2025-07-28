//
//  RootV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 24/7/25.
//

import SwiftUI
enum Screen: Hashable{
    case information
    case profile
}
struct RootV: View {
    @StateObject private var navigationManager = NavigationManager()
    @State private var selection: Int = 1
    var body: some View {
        NavigationStack(path: $navigationManager.path){
            SettingHealthTabV(selection: $selection)
                .navigationDestination(for: Screen.self) { screen in
                    switch screen {
                    case .information: InformationV()
                    case .profile: ProfileV()
                    }
                }
        }
        .environmentObject(navigationManager)
    }
}

//#Preview {
//    RootV()
//}
