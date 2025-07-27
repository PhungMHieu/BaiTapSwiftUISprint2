//
//  NavigationManager.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 24/7/25.
//

import Foundation
import SwiftUI
import Combine


class NavigationManager : ObservableObject{
    @Published var path = NavigationPath()
    @Published var isInChildView = false
    @Published var userProfile: UserProfile?
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var weightText: String = ""
    @Published var heightText: String = ""
    @Published var inputValid: Bool = false
    @Published var gender: Gender = .male
    init() {
        Publishers.CombineLatest4($firstName, $lastName, $weightText, $heightText)
            .map { firstName, lastName, weightText, heightText in
                guard let weight = Int(weightText), weight > 0, weight < 300,
                      let height = Int(heightText), height > 0, height < 300,
                      !firstName.isEmpty && !lastName.isEmpty else {
                    return false
                }
                return true
            }
            .assign(to: &$inputValid)
    }
    func goTo(_ screen: Screen){
        path.append(screen)
    }
    func goBack(_ screen: Screen){
        if !path.isEmpty{
            path.removeLast()
        }
    }
    func popToRoot(){
        path.removeLast(path.count)
    }
    func saveUserProfile(){
        guard let weight = Double(weightText), weight > 0, weight < 300,
              let height = Double(heightText), height > 0, height < 300 else {
            return
        }
        userProfile = UserProfile(firstName: firstName, lastName: lastName, weight: weight, height: height, gender: gender)
    }
}
