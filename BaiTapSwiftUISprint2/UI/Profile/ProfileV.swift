//
//  ProfileV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 24/7/25.
//

import SwiftUI
//Struct metric
struct ProfileV: View {
//    @Binding var path: NavigationPath
    @EnvironmentObject var navi: NavigationManager
    var metrics: [(String, String, String)] = [
        ("80", "Kg", "Weight"),
        ("180", "Cm", "Height"),
        ("28","","Age"),
        ("Male","","Gender")
    ]
    var body: some View {
        
        VStack(spacing:0) {
            //                Spacer()
            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 108)
                .foregroundColor(.primaryApp)
                .padding(.top,24)
            Text("John Weak")
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
                Text("23.5")
                    .font(.system(size: 64))
                    .fontWeight(.bold)
                    .foregroundColor(.good)
                Divider()
                    .padding(.horizontal,16)
                HStack(spacing: 25.67) {
                    ForEach(Array(metrics.enumerated()), id: \.offset) { index, metric in
                        MetricV(value: metric.0, unit: metric.1, title: metric.2)
                    }
                }
//                .padding(.horizontal,16)
//                .frame(maxWidth: .infinity)
                
//                .padding(.horizontal,16)
            }
            .frame(height: 194)
            .background(Color.neutral5)
            .cornerRadius(20)
            .padding(.horizontal,31.5)
            .padding(.top,28)
            
            //            .padding(.t)
            Spacer()
        //                .padding()
        }
        .background(Color.background)
    }
}

#Preview {
    ProfileV()
//        .background(.backgroundApp2)
}
