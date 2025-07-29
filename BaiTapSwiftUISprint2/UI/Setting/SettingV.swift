//
//  SettingV.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 23/7/25.
//

import SwiftUI

struct SettingV: View {
    @EnvironmentObject var navi: NavigationManager
    var body: some View {
        VStack(spacing:0) {
            Text("Settings")
                .font(.system(size: 32))
                .fontWeight(.semibold)
                .background(Color.background)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,16)
            List{
                Section{
                    Image(.icLabelPremium)
                        .resizable()
                        .scaledToFit()
                        .listRowInsets(EdgeInsets())
                }
                .listRowBackground(
                    Color.background
                )
                .listRowSeparator(.hidden)
                
                .padding(.horizontal,16)
                .padding(.vertical,16)
                ForEach(SectionP.allCases, id: \.self) { ele in
                    VStack(spacing:0){
                        ForEach(ele.row,id: \.self) {row in
                            
                            if(row == ele.row.first && ele == SectionP.section1){
                                Button {
                                    if(navi.userProfile == nil){
                                        navi.goTo(.information)
                                    }else{
                                        navi.goTo(.profile)
                                    }
                                } label: {
                                    SettingItemV(title: row.title,image: row.image)
                                        .overlay(alignment: .bottom) {
                                            if(row != ele.row.last){
                                                Divider()
                                                    .padding(.leading,52)
                                                    .padding(.trailing,16)
                                            }
                                        }
                                }
                                
                            }
                            else{
                                SettingItemV(title: row.title,image: row.image)
                                    .overlay(alignment: .bottom) {
                                        if(row != ele.row.last){
                                            Divider()
                                                .padding(.leading,52)
                                                .padding(.trailing,16)
                                        }
                                    }
                            }
                            
                        }
                    }
                    .cornerRadius(16)
                    .listRowBackground(Color.background)
                    .listRowInsets(.init())
                    .listRowSeparator(.hidden)
                    .padding(.bottom,16)
                    .padding(.horizontal,16)
                }
            }
            .listRowInsets(EdgeInsets())
            .cornerRadius(16)
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .background(Color(uiColor: .background))
            
        }
        .background(Color.background)
    }
}
#Preview {
    SettingV()
}
