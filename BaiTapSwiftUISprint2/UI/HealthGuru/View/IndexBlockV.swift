//
//  IndexBlockV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 23/7/25.
//

import SwiftUI

struct IndexBlockV: View {
    var value:Measurement?
    var healMetricLogModel: HealMetricLog
    var body: some View {
        VStack(alignment: .leading,spacing:4) {
            Text(healMetricLogModel.title)
                .font(.system(size: 14))
                .fontWeight(.medium)
                .tracking(0.2)
                .foregroundColor(.neutral3)
            HStack(spacing: 4) {
                if let value = self.value{
                    Text(healMetricLogModel.getValue(measurement: value))
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(Color(value.colorForStatus))
                        .padding(.bottom,3)
                    Text(healMetricLogModel.unit)
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .tracking(0.2)
                        .foregroundColor(Color(value.colorForStatus))
                }else{
                    Text("--")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .lineSpacing(32-UIFont.systemFont(ofSize: 18, weight: .bold).lineHeight)
                        .foregroundColor(.neutral2)
                        .padding(.bottom,3)
                    Text(healMetricLogModel.unit)
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .tracking(0.2)
                        .foregroundColor(.neutral2)
                        
                }
            }
        }
        .frame(width: 86, alignment: .leading)
    }
}

#Preview {
    IndexBlockV(value: Measurement(pulse: 50, hrv: 100), healMetricLogModel: .hrv)
//        .background(Color.red)
}
