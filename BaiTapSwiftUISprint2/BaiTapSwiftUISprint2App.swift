//
//  BaiTapSwiftUISprint2App.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//

import SwiftUI

@main
struct BaiTapSwiftUISprint2App: App {

    var body: some Scene {
        WindowGroup {
//            ContentView()
//            Page1V()
//            LazyV()
//            OnBoardTabView()
//            SettingV()
//            SettingHealthTabV()
            RootV()
                .onAppear(){
                    UINavigationBar.appearance().titleTextAttributes = [
                        .font: UIFont.systemFont(ofSize: 50)
                    ]
//                    UINavigationBar.appearance().app
                    let appearance: UITabBarAppearance = {
                        let app = UITabBarAppearance()
//                        app.inlineLayoutAppearance.normal.titleTextAttributes = [
//                            .font: UIFont.systemFont(ofSize: 50)
//                        ]
                        app.stackedLayoutAppearance.normal.titleTextAttributes = [
                            .font: UIFont.systemFont(ofSize: 50)
                        ]
//                        app.compactInlineLayoutAppearance.normal.titleTextAttributes = [
//                            .font: UIFont.systemFont(ofSize: 50)
//                        ]
                        
                        return app
                    }()
                    UITabBar.appearance().standardAppearance = appearance
                    UITableView.appearance().sectionHeaderHeight = 0
//                    UITabBar.appearance().scrollEdgeAppearance = appearance
                }
                
//            HealthGuruV()
//            HealthGridItemV(title: "Heart rate")
        }
    }
}
