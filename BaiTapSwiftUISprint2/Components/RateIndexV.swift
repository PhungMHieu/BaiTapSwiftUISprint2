//
//  RateIndexV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 23/7/25.
//

import SwiftUI

struct RateIndexV: View {
//    var 
    var body: some View {
        HStack(spacing: 13) {
            Image(.icHeart)
                .frame(width: 56)
                .scaledToFit()
            HStack(spacing: 10) {
                ForEach(HealMetricLog.allCases, id: \.rawValue){ type in
                    IndexBlockV(healMetricLogModel: type)
                }
            }
            
        }
        .padding(12)
//        .padding(.leading,12)
//        .padding(.trailing,12)
//        .padding(.vertical,12)
        .background(.neutral5)
        .cornerRadius(16)
        
//        .cornerRadius(40)
//        .padding()
//        .frame(maxWidth: .infinity)
//        .frame(height: 56)
        
    }
}

#Preview {
    RateIndexV()
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(.black)
}
