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
                .foregroundColor(.neutral3)
            HStack(spacing: 4) {
                if let value = self.value{
                    Text(healMetricLogModel.getValue(measurement: value))
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(Color(value.colorForStatus))
                        .multilineTextAlignment(.leading)
                        
                    Text(healMetricLogModel.unit)
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundColor(Color(value.colorForStatus))
                        .multilineTextAlignment(.leading)
//                        .frame(maxWidth: .infinity)
                }else{
                    Text("--")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(.neutral2)
                    Text(healMetricLogModel.unit)
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundColor(.neutral2)
                        
//                        .frame(maxWidth: .infinity)
                }
//                Spacer()
//                                    .frame(maxWidth: .infinity)
//                Spacer()
            }
//            .frame(maxWidth: 75)
//            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
//        .padding(.trailing,12)
//        .background()
    }
}

#Preview {
    IndexBlockV(value: Measurement(pulse: 50, hrv: 100), healMetricLogModel: .hrv)
//        .background(Color.red)
}
