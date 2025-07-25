//
//  HealMetricLogModel.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 25/7/25.
//

import Foundation

enum HealMetricLog:String,CaseIterable{
    case pulse
    case hrv
    case status
    var title:String{
        switch self {
        case .pulse:
            return "Pulse"
        case .hrv:
            return "HRV"
        case .status:
            return "Status"
        }
    }
    var unit:String{
        switch self {
        case .pulse:
            return "bpm"
        case .hrv:
            return "ms"
        case .status:
            return ""
        }
    }
    func getValue(measurement: Measurement)->String{
        switch self{
        case.pulse: return String(measurement.pulse)
        case.hrv: return String(measurement.hrv)
        case.status: return (measurement.status).rawValue
        }
    }
//    var color:ColorResource{
//        switch self
//    }
//    var value:String{
//        switch self {
//        case .pulse:
//            return "120"
//        case .hrv:
//            return "120"
//        case .status:
//            return "OK"
//        }
//    }
}
