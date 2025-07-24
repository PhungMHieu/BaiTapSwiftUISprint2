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
