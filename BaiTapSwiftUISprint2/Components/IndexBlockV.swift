//
//  IndexBlockV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 23/7/25.
//

import SwiftUI

struct IndexBlockV: View {
    var value:String="--"
    var healMetricLogModel: HealMetricLog
    var body: some View {
        VStack(alignment: .leading,spacing:4) {
            Text(healMetricLogModel.title)
                .font(.system(size: 14))
                .fontWeight(.medium)
                .foregroundColor(.neutral3)
            HStack {
                Text(value)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(.neutral2)
                Text(healMetricLogModel.unit)
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(.neutral2)
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
//        .background()
    }
}

#Preview {
    IndexBlockV(healMetricLogModel: .hrv)
//        .background(Color.red)
}
