//
//  SettingV.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 23/7/25.
//

import SwiftUI

struct SettingV2: View {
//    var data:[]
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
//                            .padding(.horizontal,16)
//                            .padding(.top,16)
                        //                    .clipped()ß
                        //                    .padding(16)
                    }
                    .listRowBackground(Color.blue)
                    .listRowSeparator(.hidden)
                    
                    .padding(.horizontal,16)
                    .padding(.bottom,16)
                    
//                    .padding(0)
//                    .background(Color.background)
                    //            .background(Color.clear)
                    //            SettingItemV()
                    //            SettingItemV()
                    //            SettingItemV()
                    //            let imageI = Image(.icLike)
                    //            LabeledContent("", value: "")
                    //            LabeledContent("Number", value: )
                    Section() {
                        SettingItemV(title: "Profile", image: .icProfileCircle)
//                        SettingItemV()
//                            .listRowBackground(Color.blue)
//                            .frame(height: 190)
//                            .padding(0)
                    }
                    .cornerRadius(16)
                    .listRowBackground(Color.blue)
                    .listRowInsets(.init())
                    .listRowSeparator(.hidden)
                    .padding(.bottom,16)
                    .padding(.horizontal,16)
                    Section {
                        
                        SettingItemV(title: "Profile", image: .icProfileCircle)
                            
                        SettingItemV(title: "Profile", image: .icLike)
                        SettingItemV(title: "Profile", image: .icLike)
//                            .listRowBackground(Color.blue)
//                            .frame(maxWidth: .infinity)
//                            .padding()
//                            .padding()
//                        SettingItemV()
//                            .listRowBackground(Color.blue)
//                            .frame(height: 190)
//                            .padding(0)
                    }
//                    .cornerRadius(16)
                    .listRowBackground(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.blue)
                    )
                    .listRowInsets(.init())
//                    .listRowSeparator(.hidden)
                    .cornerRadius(12)
                    .padding(.horizontal,16)
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
                .background(Color.red)
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
//        .background(Color.red)
//        .background(Color.background)
        
//        .navigationTitle("Setting")
//        .lineSpacing(100ß)
//        .padding(0)
    }
}

#Preview {
    SettingV2()
}

