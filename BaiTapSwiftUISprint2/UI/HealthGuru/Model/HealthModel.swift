//
//  HealthModel.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 22/7/25.
//

import Foundation

//struct HealthModel: ObservableObject{
//}
//struct HealthModel
struct Measurement: Identifiable{
    let id = UUID().uuidString
    var pulse: Int
    var hrv: Int
    var status: Status{
        switch pulse{
        case ..<60:
            return .low
        case 60...100:
            return .normal
        default:
            return .warning
        }
    }
    var colorForStatus: ColorResource{
        switch pulse{
        case ..<60:
            return .low
        case 60...100:
            return .good
        case 101...:
            return .warning
        default:
            return .neutral2
        }
    }
}
enum Status: String{
    case low = "Low"
    case normal = "Good"
    case warning = "Warning"
}
class MeasurementManager: ObservableObject{
    @Published var measurements: [Measurement] = []
    func addMeasurement(_ measument: Measurement){
        self.measurements.append(measument)
    }
//    func isEnableAction(_ measument: Measurement){
//        if
//    }
}
