//
//  MetricV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 24/7/25.
//

import SwiftUI

struct MetricV: View {
    var value: String
    var unit: String
    var title: String
    var body: some View {
        VStack {
            HStack{
                Text(value)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.good)
                Text(unit)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.good)
            }
            Text(title)
                .font(.system(size: 14))
                .fontWeight(.medium)
                .foregroundColor(.neutral3)
        }
    }
}

#Preview {
    MetricV(value: "80", unit: "Kg", title: "Weight")
}

