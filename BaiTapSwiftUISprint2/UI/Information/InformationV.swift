//
//  InformationV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 24/7/25.
//

import SwiftUI

struct InformationV: View {
//    @State private var showProfile = false
//    @Binding var path: [Route]
//    @State private var path = NavigationPath()
    @EnvironmentObject var navi: NavigationManager
//    @Binding var path: NavigationPath
    var body: some View {
//        NavigationStack {
            VStack(spacing: 21) {
                HStack(spacing:12){
                    LabelTextFieldV(text: .constant(""), type: .firstName)
                    LabelTextFieldV(text: .constant(""), type: .lastName)
                }
                VStack(spacing: 12) {
                    Text("Gender")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundColor(.neutral15)
                        .lineSpacing(24-UIFont.systemFont(ofSize: 16, weight: .medium).lineHeight)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    Picker(selection: .constant(1), label: Text("Gender")) {
                        Text("Male").tag(1)
                        Text("Female").tag(2)
                    }
                    .pickerStyle(.segmented)
                }
                HStack(spacing:12){
                    LabelTextFieldV(text: .constant(""), type: .weight)
                    LabelTextFieldV(text: .constant(""), type: .height)
                }
                Spacer()
                    Button {
                        navi.goTo(.profile)
//                        path.append(Screen.profile)
                    } label: {
                        Text("Update")
                    }
                    .buttonStyle(ButtonStyleOnBoard())
                }
            .padding(.top,24)
            .padding(.horizontal,16)
            .background(Color.background)
                
//            }
//            .navigationDestination(isPresented:$showProfile) {
//                ProfileV()
//            }
        }
    }


//#Preview {
//    InformationV(path: <#Binding<NavigationPath>#>)
//        .frame(maxWidth: .infinity,maxHeight: .infinity)
//        .background(Color.background)
//}
