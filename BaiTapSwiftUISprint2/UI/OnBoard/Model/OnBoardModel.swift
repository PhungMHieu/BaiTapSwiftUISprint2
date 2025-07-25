//
//  OnBoardModel.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 25/7/25.
//

import Foundation

enum OnBoardPage:CaseIterable,Hashable{
    case page1
    case page2
    case page3
    case page4
    var page:Int{
        switch self{
        case.page1: return 1
        case.page2: return 2
        case.page3: return 3
        case.page4: return 4
        }
    }
    var itemPage: [healGrid]{
        switch self{
        case .page2:
            return [
                healGrid(icon: .pulse, title: "Heart Rate"),
                healGrid(icon: .hypertension, title: "High Blood\nPressure"),
                healGrid(icon: .stress, title: "Stress & Anxiety"),
                healGrid(icon: .energyConsumption, title: "Low Energy\nLevels")
            ]
        case .page3:
            return [
                healGrid(icon: .dumbbell, title: "Improve Heart\nHealth"),
                healGrid(icon: .pressure, title: "Improve blood\npressure health"),
                healGrid(icon: .harmony, title: "Reduce Stress"),
                healGrid(icon: .noEnergy, title: "Increase Energy Levels")
            ]
        case .page1:
            return []
        case .page4:
            return [
                healGrid(icon: .plan, title: "Educational Plan"),
                healGrid(icon: .exerciseRoutine, title: "Exercise Plan"),
                healGrid(icon: .stressTest,title: "Health Tests")
            ]
        }
    }
}
