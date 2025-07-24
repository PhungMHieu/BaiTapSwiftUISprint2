//
//  SettingV.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 23/7/25.
//

import SwiftUI
enum ChildScreen: Hashable{
    case information, profile
}
struct SettingV: View {
    @EnvironmentObject var nav: NavigationManager
    //    var data:[[SettingModel]] = [
    //        SettingModel(image: .icProfileCircle, title: "Profile"),
    //        SettingModel(image: .ic, title: <#T##String#>)
    //    ]
    //    var
    @State var path = NavigationPath()
    var body: some View {
        //            .scaledToFit()
        
        
        //            .scaledToFill()
        //        VStack(spacing: 0) {
        //            .frame(alignment: .leading)
        NavigationStack(path: $path){
            VStack(spacing:0) {
                Text("Setting")
                    .font(.system(size: 32))
                    .fontWeight(.semibold)
                //                    .padding(0)
                //            .padding(.leading,23)
                    .background(Color.background)
                    .frame(maxWidth: .infinity,alignment: .leading)
                //                    .background(.background)
                    .padding(.leading,16)
                List{
                    Section{
                        Image(.icLabelPremium)
                            .resizable()
                            .frame(maxWidth: .infinity, maxHeight: 104)
                            .scaledToFill()
                            .listRowInsets(EdgeInsets())
                    }
                    //                    .listRowBackground(Color.blue)
                    .listRowBackground(
                        //                        RoundedRectangle(cornerRadius: 16)
                        //                            .fill(Color.red)
                        Color.background
                    )
                    .listRowSeparator(.hidden)
                    
                    .padding(.horizontal,16)
                    .padding(.vertical,16)
                    ForEach(SectionP.allCases, id: \.self) { ele in
                        VStack(spacing:0){
                            ForEach(ele.row,id: \.self) {row in
                                //                                if(row == ele.row.first){
                                //                                    //                                        NavigationLink {
                                //                                    //                                            OnBoardTabView()
                                //                                    //                                        }
                                //                                    NavigationLink {
                                //                                        OnBoardTabView()
                                //                                    }
                                //                                     label: {
                                //                                        SettingItemV(title: row.title,image: row.image)
                                //                                    }
                                //
                                //                                }
                                if(row == ele.row.first && ele == SectionP.section1){
                                    Button {
//                                        path.append("InformationV")
//                                        nav.goTo(.screenB);                                        print("Button was tapped")
                                        //                                        Path.ap
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
                                            //                                        if(row == ele.row.first){
                                            //                                            NavigationLink("") {
                                            //                                                OnBoardTabView()
                                            //                                            }
                                            //                                        }
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
                
                
                //            .navigationTitle("Settings")
                .listRowInsets(EdgeInsets())
                .cornerRadius(16)
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
                //                .background(Color.red)
                .background(Color(uiColor: .background))
//                .navigationDestination(for: String.self, destination: { value in
//                    if value == "InformationV"{
//                        InformationV()
//                    }
//                })
                //                .padding()
                //                .background()
                //                .listStyle(.inset)
                //                .listStyle(.insetGrouped)
                //                .contentMargins(.top, 0)
                //                .padding(0)
            }
            //            .padding(14)
            //            .navigationTitle("Setting")
            //            .scrollContentBackground(.hidden)
            //            .background(Color.red)
            //        }
            //        .background()
            //        .background(Color.red)
            .background(Color.background)
            
            //        .navigationTitle("Setting")
            //        .lineSpacing(100ß)
            //        .padding(0)
        }
    }
}
#Preview {
    SettingV()
}
