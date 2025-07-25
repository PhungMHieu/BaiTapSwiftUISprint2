//
//  HealthGridItem.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//

import SwiftUI

struct HealthGridItemV: View {
    var title: String
    var image: ImageResource
    var body: some View {
        //        Text()
//        var image: String
        ZStack {
            VStack(spacing: 0){
                ZStack(alignment: .leading) {
                    HStack {
                        Image(.monotoneApple)
                            .padding(.leading ,16)
                            .padding(.top ,16)
                        Spacer()
                    }
                    .padding(0)
                }
                .padding(0)
                ZStack {
                    Image(image)
                        .resizable()
                        .frame(height: 64)
                        .aspectRatio(contentMode: .fit)
                }
                .padding(.top, 8)
                //                .padding(.top, 8)
                ZStack {
                    HStack {
                        Text(title)
                            .font(.system(size: 18))
                            .foregroundStyle(.neutral2)
//                            .padding()
                        Spacer()
                    }
                    .padding(.top, 39)
                    .padding(.leading,16)
                    .padding(.bottom, 18)
                    
                }
            }
            .background(.neutral5)
            .frame(width: 164,height: 195)
            .cornerRadius(20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp2)
    }
        
}

#Preview {
    HealthGridItemV(title: "Heart rate",image: .pulse)
        .background(.neutral3)
}
