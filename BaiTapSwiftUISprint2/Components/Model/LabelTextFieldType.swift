//
//  LabelTextFieldModel.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 23/7/25.
//

//import SwiftUI

enum LabelTextFieldType: String, CaseIterable {
    case pulse
    case hrv
    case firstName
    case lastName
    case weight
    case height
    var title: String{
        switch self {
        case .pulse:
            return "Pulse"
        case .hrv:
            return "HRV"
        case .firstName:
            return "First Name"
        case .lastName:
            return "Last Name"
        case .weight:
            return "Weight"
        case .height:
            return "Height"
        }
    }
    var placeholder: String{
        switch self{
        case.pulse: return "Enter your pulse"
        case.hrv: return "Enter your hrv"
        case.firstName: return "Enter your first name"
        case.lastName: return "Enter your last name"
        case.weight: return "Enter your weight"
        case.height: return "Enter your height"
        }
    }
    
}
