//
//  RateIndexV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 23/7/25.
//

import SwiftUI

struct RateIndexV: View {
    var measurement: Measurement? = nil
    var body: some View {
        HStack(spacing: 13) {
            Image(.icHeart)
                .frame(width: 56)
                .scaledToFit()
            HStack(spacing: 10) {
                ForEach(HealMetricLog.allCases, id: \.rawValue){ type in
                    if let measurement = self.measurement{
                        IndexBlockV(value: measurement, healMetricLogModel: type)
                    }else{
                        IndexBlockV(healMetricLogModel: type)
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding(12)
        .frame(maxWidth: .infinity)
        .background(.neutral5)
        .cornerRadius(16)
    }
}

#Preview {
    RateIndexV(measurement: Measurement(pulse: 100, hrv: 100))
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(.black)
}
