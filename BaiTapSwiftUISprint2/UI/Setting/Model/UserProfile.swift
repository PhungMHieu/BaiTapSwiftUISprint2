//
//  UserProfile.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 27/7/25.
//

import Foundation

struct UserProfile {
    let id: String = UUID().uuidString
    var firstName: String
    var lastName: String
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    var weight: Double
    var height: Double
    func calculateBMI()->Double{
        return Double(String(format: "%.1f",(weight / (height * height / 100_00)))) ?? 0
    }
    var gender: Gender
    init(firstName: String, lastName: String, weight: Double, height: Double, gender: Gender) {
        self.firstName = firstName
        self.lastName = lastName
        self.weight = weight
        self.height = height
        self.gender = gender
    }
    func getGender() -> String {
        return gender.description
    }
}
enum Gender: String,CaseIterable, Hashable{
    case male
    case female
    var description: String {
        switch self {
            case .male: return "Male"
            case .female: return "Female"
        }
    }
}
