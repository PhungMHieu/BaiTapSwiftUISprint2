//
//  ProfileV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 24/7/25.
//

import SwiftUI
struct ProfileV: View {
    @EnvironmentObject var navi: NavigationManager
    var body: some View {
        VStack(spacing:0) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 108)
                .foregroundColor(.primaryApp)
                .padding(.top,24)
            Text(navi.userProfile?.fullName ?? "John Weak")
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .foregroundColor(.neutral15)
                .padding(.top,24)
            VStack(spacing: 12){
                Text("Your bmi:")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(.neutral1)
                    .padding(.top,0)
                Text(String(navi.userProfile?.calculateBMI() ?? 25))
                    .font(.system(size: 64))
                    .fontWeight(.bold)
                    .foregroundColor(.good)
                Divider()
                    .padding(.horizontal,16)
                HStack(spacing: 25.67) {
                    ForEach(MetricType.allCases, id: \.rawValue) { metricType in
                        switch metricType{
                        case .height:
                            MetricV(value: String(Int(navi.userProfile?.height ?? 0)), type: metricType)
                        case .weight:
                            MetricV(value: String(Int(navi.userProfile?.weight ?? 0)), type: metricType )
                        case .age:
                            MetricV(value: "29",type: metricType)
                        case .gender:
                            MetricV(value: String(navi.userProfile?.gender.description ?? "Other"), type: metricType)
                        }
                    }
                }
            }
            .frame(height: 194)
            .background(Color.neutral5)
            .cornerRadius(20)
            .padding(.horizontal,31.5)
            .padding(.top,28)
            
            Spacer()
        }
        .background(Color.background)
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    navi.popToRoot()
                } label: {
                    Image("icLeft2")
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    navi.goTo(.information)
                } label: {
                    Text("Edit")
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                        .foregroundColor(.primary1)
                }
            }
        }
    }
}

#Preview {
//    ProfileV()
//        .background(.backgroundApp2)
}
