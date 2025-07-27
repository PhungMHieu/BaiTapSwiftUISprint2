
//
//  SettingModel.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 23/7/25.
//

import Foundation

struct SettingModel:Hashable{
    var image: ImageResource
    var title: String
    var nextIcon: ImageResource = .icRight2
}
enum SectionP:CaseIterable{
    case section1
    case section2
    case section3
    var row: [SettingModel]{
        switch self{
        case.section1:
            return [
                SettingModel(image: .icProfileCircle, title: "Profile")
            ]
        case.section2:
            return [
                SettingModel(image: .icNotification, title: "Daily Reminder"),
                SettingModel(image: .icCategory, title: "Change App Icon"),
                SettingModel(image: .icWebsite, title: "Language")
            ]
        case.section3:
            return [
                SettingModel(image: .icLike, title: "Rate Us"),
                SettingModel(image: .icMessage37, title: "Feedback"),
                SettingModel(image: .icShieldStar, title: "Privacy Policy"),
                SettingModel(image: .icDocumentAlignRight, title: "Term of User")

            ]
        }
    }
}
