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
//        guard let measurement = self.measurement else {
//            return
//        }
        HStack(spacing: 13) {
            Image(.icHeart)
                .frame(width: 56)
                .scaledToFit()
            HStack(spacing: 10) {
//                guard let measurement = measurement else {return}
                ForEach(HealMetricLog.allCases, id: \.rawValue){ type in
                    if let measurement = self.measurement{
                        IndexBlockV(value: measurement, healMetricLogModel: type)
                    }else{
                        IndexBlockV(healMetricLogModel: type)
                    }
                    
//                        .foregroundColor(.good)
//                    switch measurement.status{
//                    
//                    }
                }
            }
            .frame(maxWidth: .infinity)
//            .frame(width: )
            
        }
        .padding(12)
//        .padding(.leading,12)
//        .padding(.trailing,12)
//        .padding(.vertical,12)
        .frame(maxWidth: .infinity)
        .background(.neutral5)
        .cornerRadius(16)
        
//        .cornerRadius(40)
//        .padding()
//        .frame(maxWidth: .infinity)
//        .frame(height: 56)
        
    }
}

#Preview {
    RateIndexV(measurement: Measurement(pulse: 100, hrv: 100))
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(.black)
}
