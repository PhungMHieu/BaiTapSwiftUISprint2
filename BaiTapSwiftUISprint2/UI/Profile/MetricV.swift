//
//  MetricV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 24/7/25.
//

import SwiftUI
enum MetricType:String,CaseIterable,Hashable{
    case weight = "Weight"
    case height = "Height"
    case age = "Age"
    case gender = "Gender"
    var unit:String{
        switch self{
        case .weight:
            "kg"
        case .height:
            "cm"
        case .age:
            ""
        case .gender:
            ""
        }
    }
}
struct MetricV: View {
    var value: String
    var type: MetricType
    var body: some View {
        VStack(spacing:5) {
            HStack(alignment:.center){
                Text(value)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.good)
                Text(type.unit)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.good)
            }
            Text(type.rawValue)
                .font(.system(size: 14))
                .fontWeight(.medium)
                .foregroundColor(.neutral3)
        }
    }
}

#Preview {
    MetricV(value: "70", type: .weight)
}

