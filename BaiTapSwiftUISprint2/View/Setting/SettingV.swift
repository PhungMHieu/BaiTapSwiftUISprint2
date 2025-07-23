//
//  SettingV.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 23/7/25.
//

import SwiftUI

struct SettingV: View {
//    var data:[[SettingModel]] = [
//        SettingModel(image: .icProfileCircle, title: "Profile"),
//        SettingModel(image: .ic, title: <#T##String#>)
//    ]
//    var 
    var body: some View {
//            .scaledToFit()

          
//            .scaledToFill()
        VStack(alignment: .leading, spacing: 0) {
            Text("Setting")
                .font(.system(size: 32))
                .fontWeight(.semibold)
                .padding(0)
                .padding(.leading,23)
            
            NavigationStack {
                List{
                    Section{
                        Image(.icLabelPremium)
                            .resizable()
                            .frame(maxWidth: .infinity, maxHeight: 104)
                            .scaledToFill()
                            .listRowInsets(EdgeInsets())
                    }
//                    .listRowBackground(Color.blue)
                    .listRowBackground(Color.background)
                    .listRowSeparator(.hidden)
                    
                    .padding(.horizontal,16)
                    .padding(.vertical,16)
                    ForEach(SectionP.allCases, id: \.self) { ele in
                        VStack(spacing:0){
                            ForEach(ele.row,id: \.self) {row in
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
                        .cornerRadius(16)
//                        .listRowBackground(Color.blue)
                        .listRowBackground(Color.background)
                        .listRowInsets(.init())
                        .listRowSeparator(.hidden)
                        .padding(.bottom,16)
                        .padding(.horizontal,16)
                    }
//                    Section() {
//                        SettingItemV()
//                    }
//                    .cornerRadius(16)
//                    .listRowBackground(Color.blue)
//                    .listRowInsets(.init())
//                    .listRowSeparator(.hidden)
//                    .padding(.bottom,16)
//                    .padding(.horizontal,16)
//                    VStack(spacing: 0) {
//                        SettingItemV()
//                            .overlay(alignment: .bottom) {
//                                Divider()
//                                    .padding(.leading,52)
//                                    .padding(.trailing,16)
//                            }
//                        SettingItemV()
//                            .overlay(alignment: .bottom) {
//                                Divider()
//                                    .padding(.leading,52)
//                                    .padding(.trailing,16)
//                            }
//                        SettingItemV()
////                            .listRowBackground(Color.blue)
////                            .frame(height: 190)
////                            .padding(0)
//                    }
//                    .listRowBackground(Color.blue)
//                    .listRowInsets(.init())
////                    .listRowSeparator(.hidden)
//                    .cornerRadius(12)
//                    .padding(.horizontal,16)
//                    .padding(.horizontal,16)
//                    .padding(.top,16)
                    
//                    .corner
                    
//                    .cornerRadius(16)
//                    .padding(16)
//                    .padding(.horizontal,16)
//                    .padding(.horizontal,16)
//                    .padding()
                }
//                .listSectionSpacing(0)
//                
    //            .navigationBarTitleDisplayMode(.inline)
//                .listStyle(.plain)
    //            .navigationTitle("Settings")
                .listRowInsets(EdgeInsets())
                .cornerRadius(16)
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
//                .background(Color.red)
                .background(Color(uiColor: .background))
//                .padding()
//                .background()
                //                .listStyle(.inset)
//                .listStyle(.insetGrouped)
//                .contentMargins(.top, 0)
//                .padding(0)
            }
//            .scrollContentBackground(.hidden)
//            .background(Color.red)
        }
//        .background()
//        .background(Color.red)
        .background(Color.background)
        
//        .navigationTitle("Setting")
//        .lineSpacing(100ß)
//        .padding(0)
    }
}

#Preview {
    SettingV()
}
