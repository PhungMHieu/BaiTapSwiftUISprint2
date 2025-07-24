//
//  NavigationManager.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 24/7/25.
//

import Foundation
import SwiftUI
//enum AppScreen: Hashable{
//    case information
//    case profile
//    case setting
//}
enum Screen: Hashable{
    case information, profile,setting
}
class NavigationManager : ObservableObject{
    @Published var path = NavigationPath()
    func goTo(_ screen: Screen){
        path.append(screen)
    }
    func goBack(_ screen: Screen){
        if !path.isEmpty{
            path.removeLast()
        }
    }
    func popToScreen(_ screen: Screen){
        path.removeLast(2)
    }
    func popToRoot(_ screen: Screen){
        path.removeLast(path.count)
    }
}
