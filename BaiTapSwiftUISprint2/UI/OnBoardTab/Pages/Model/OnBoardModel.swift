//
//  OnBoardModel.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 25/7/25.
//

import Foundation

enum OnBoardPage:Int,CaseIterable,Hashable{
    case page1 = 0
    case page2 = 1
    case page3 = 2
    case page4 = 3
    var id:Int{rawValue}
    var titlePage:String{
        switch self{
        case.page1: return ""
        case .page2:
            return "Which heart health issue concerns you the most?"
        case .page3:
            return "What would you like to\nachieve?"
        case .page4:
            return "What type of plan would\nyou like to follow?"
        }
    }
    var itemPage: [HealGrid]{
        switch self{
        case .page2:
            return [
                HealGrid(icon: .pulse, title: "Heart Rate"),
                HealGrid(icon: .hypertension, title: "High Blood\nPressure"),
                HealGrid(icon: .stress, title: "Stress & Anxiety"),
                HealGrid(icon: .energyConsumption, title: "Low Energy\nLevels")
            ]
        case .page3:
            return [
                HealGrid(icon: .dumbbell, title: "Improve Heart\nHealth"),
                HealGrid(icon: .pressure, title: "Improve blood\npressure health"),
                HealGrid(icon: .harmony, title: "Reduce Stress"),
                HealGrid(icon: .noEnergy, title: "Increase Energy Levels")
            ]
        case .page1:
            return []
        case .page4:
            return [
                HealGrid(icon: .plan, title: "Educational Plan"),
                HealGrid(icon: .exerciseRoutine, title: "Exercise Plan"),
                HealGrid(icon: .stressTest,title: "Health Tests")
            ]
        }
    }
}


