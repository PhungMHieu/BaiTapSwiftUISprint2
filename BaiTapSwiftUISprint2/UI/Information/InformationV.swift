//
//  InformationV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 24/7/25.
//

import SwiftUI

struct InformationV: View {
    @EnvironmentObject var navi: NavigationManager
    var body: some View {
            VStack(spacing: 21) {
                HStack(spacing:12){
                    LabelTextFieldV(text: $navi.firstName, type: .firstName)
                    LabelTextFieldV(text: $navi.lastName, type: .lastName)
                }
                VStack(spacing: 12) {
                    Text("Gender")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundColor(.neutral15)
                        .lineSpacing(24-UIFont.systemFont(ofSize: 16, weight: .medium).lineHeight)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    Picker(selection: $navi.gender, label: Text("Gender")) {
                        ForEach(Gender.allCases, id: \.hashValue) { gender in
                            Text(gender.description)
//                                .font(.system(size: 13,weight:.semibold))
                                .tag(gender)
                            
                        }
                    }
                    .pickerStyle(.segmented)
                }
                HStack(spacing:12){
                    LabelTextFieldV(text: $navi.weightText, type: .weight)
                    LabelTextFieldV(text: $navi.heightText, type: .height)
                }
                Spacer()
                    Button {
                        navi.saveUserProfile()
                        navi.goTo(.profile)
//                        path.append(Screen.profile)
                    } label: {
                        Text("Update")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    .modifier(ButtonOnBoardModifier())
                    .background(navi.inputValid ? Color.primaryApp:Color.neutral3)
                    .cornerRadius(16)
                    .padding(.bottom, 16)
                    .disabled(!navi.inputValid)
                }
            .padding(.top,24)
            .padding(.horizontal,16)
            .background(Color.background)
            .navigationTitle("Information")
            .navigationBarTitleDisplayMode(.inline)
        }
    }


//#Preview {
//    InformationV()
//}
