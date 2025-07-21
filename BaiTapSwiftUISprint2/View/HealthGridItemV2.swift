//
//  HealthGridItemV2.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//

import SwiftUI

struct HealthGridItemV2: View {
    var title: String
    var image: ImageResource
    var body: some View {
        //        Text()
//        var image: String
//        ZStack {
            VStack(alignment: .leading,spacing: 0){
                Image(.monotoneApple)
                    .padding(.top, 16)
                    .padding(.leading, 16)
//                ZStack(){
//                    Spacer()
                    Image(image)
//                }
                .frame(maxWidth: .infinity)
                .padding(.top, 8)
                Spacer()
                Text(title)
                    .padding(.leading, 16)
                    .padding(.bottom, 18)
                    .font(.system(size: 18))
                    .foregroundStyle(.neutral2)
            }
            .background(.neutral5)
            .frame(width: (UIScreen.main.bounds.width-48)/2,height: 195)
            .aspectRatio(CGSize(width:164, height:195), contentMode: .fit)
            .cornerRadius(20)
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.backgroundApp2)
    }
}

#Preview {
    HealthGridItemV2(title: "Heart rate",image: .pulse)
        .background(.neutral3)
}
