//
//  NavigationManager.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 24/7/25.
//

import Foundation
import SwiftUI
enum AppScreen: Hashable{
    case screenB
    case screenC
}
class NavigationManager:ObservableObject{
    @Published var path = NavigationPath()
    func goTo(_ screen: AppScreen){
        path.append(screen)
    }
    func goBack(_ screen: AppScreen){
        if !path.isEmpty{
            path.removeLast()
        }
    }
    func popToRoot(_ screen: AppScreen){
        path.removeLast(path.count)
    }
}
struct NavigationRootView: View{
    @StateObject private var nav = NavigationManager()
    var body: some View{
        NavigationStack(path: $nav.path) {
            SettingV()
                .navigationDestination(for: AppScreen.self) { screen in
                    switch screen{
                    case .screenB: InformationV()
                    case .screenC: ProfileV()
                    }
                }
        }
        .environmentObject(nav)
    }
}
