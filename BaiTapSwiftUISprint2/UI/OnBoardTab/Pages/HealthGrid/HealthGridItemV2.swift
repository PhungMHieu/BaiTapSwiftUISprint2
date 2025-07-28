//
//  HealthGridItemV2.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//

import SwiftUI

struct HealthGridItemV2: View {
    var title: String
    @State var image: ImageResource
    @State var imageCheckBox: ImageResource = .monotoneApple
    @Binding var isSelected: Bool
    var body: some View {
        Button(action: {
            isSelected.toggle()
            switch isSelected{
            case false: imageCheckBox = .monotoneApple
            case true: imageCheckBox = .monotoneCoffee
            }
        }, label: {
            VStack(alignment: .leading,spacing: 0){
                Image(imageCheckBox)
                    .padding(.top, 16)
                    .padding(.leading, 16)
                Image(image)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 8)
                Spacer()
                Text(title)
                    .padding(.leading, 16)
                    .padding(.bottom, 18)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.neutral2)
            }
            .background(.neutral5)
            .frame(width: (UIScreen.main.bounds.width-48)/2,height: 195)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(isSelected ? Color.primary1:Color.clear, lineWidth: 1.5))
            .aspectRatio(CGSize(width:164, height:195), contentMode: .fit)
        })
    }
}

#Preview {
    HealthGridItemV2(title: "Heart issue",image: .pulse, isSelected: .constant(false))
        .background(.neutral3)
}
