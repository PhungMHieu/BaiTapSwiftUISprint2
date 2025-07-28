//
//  BaiTapSwiftUISprint2App.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//

import SwiftUI

@main
struct BaiTapSwiftUISprint2App: App {
    @AppStorage(OnBoardingKey.isCompleted.rawValue)
    var isCompleted:Bool = false
    init() {
        setUpNavBar()
        setUpTabBar()
    }
    var body: some Scene {
        WindowGroup {
            if(isCompleted){
                RootV()
            }else{
                OnBoardTabView()
            }
        }
    }
}
func setUpNavBar(){
    let appearance = UINavigationBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = .clear
    UINavigationBar.appearance().tintColor = .neutral2
    appearance.titleTextAttributes = [
        .font: UIFont.boldSystemFont(ofSize: 20),
        .foregroundColor: UIColor.neutral1
    ]

    let backImage = UIImage.icLeft2.withRenderingMode(.alwaysOriginal)
    appearance.setBackIndicatorImage(backImage, transitionMaskImage: backImage)
    let backButtonAppearance = UIBarButtonItemAppearance()
    backButtonAppearance.normal.titleTextAttributes = [
        .foregroundColor: UIColor.clear
    ]
    appearance.backButtonAppearance = backButtonAppearance
    appearance.shadowColor = .clear
    

    UINavigationBar.appearance().standardAppearance = appearance
    UINavigationBar.appearance().scrollEdgeAppearance = appearance
    UINavigationBar.appearance().compactAppearance = appearance
    
}
func setUpTabBar(){
    let apperance = UITabBarAppearance()
    apperance.configureWithTransparentBackground()
    apperance.backgroundImage = .imgBackgroundTabBar
    apperance.shadowColor = .clear
    let normalAttributes: [NSAttributedString.Key: Any] = [
        .foregroundColor: UIColor.neutral4,
        .font: UIFont.systemFont(ofSize: 14)
    ]
    let selectedAttributes: [NSAttributedString.Key: Any] = [
        .foregroundColor: UIColor.primaryApp,
        .font: UIFont.systemFont(ofSize: 14)
    ]
    apperance.stackedLayoutAppearance.normal.titleTextAttributes = normalAttributes
    apperance.stackedLayoutAppearance.selected
        .titleTextAttributes = selectedAttributes
    UITabBar.appearance().standardAppearance = apperance
    UITabBar.appearance().scrollEdgeAppearance = apperance
}

