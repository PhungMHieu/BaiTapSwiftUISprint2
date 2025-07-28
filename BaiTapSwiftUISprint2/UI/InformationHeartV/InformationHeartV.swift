//
//  InformationHeartV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 23/7/25.
//

import SwiftUI

struct InformationHeartV: View {
    @Binding var toggled:Bool
    @ObservedObject var measurement: MeasurementManager
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            HStack(spacing:16){
                LabelTextFieldV(text: $measurement.pulse, type: .pulse)
                LabelTextFieldV(text: $measurement.hrv, type: .hrv)
            }
            .onAppear {
                measurement.pulse = ""
                measurement.hrv = ""
            }
            Spacer()
            Button {
                measurement.addMeasurement()
                toggled.toggle()
            } label: {
                Text("Add")
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
            }
            .modifier(ButtonOnBoardModifier())
            .background(measurement.canAddMeasurement ? Color.primaryApp:Color.neutral3)
            .cornerRadius(16)
            .padding(.bottom, 16)
            .disabled(!measurement.canAddMeasurement)
        }
        .padding(.horizontal,16)
        .padding(.bottom,16)
        .padding(.top,24)
        .background(Color.background)
        .toolbar {
            ToolbarItem (placement: .cancellationAction){
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.neutral2)
                }

            }
            ToolbarItem (placement: .principal){
                Text("Information")
                    .font(.system(size: 20,weight: .bold))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    InformationHeartV(toggled: .constant(true), measurement: .init())
}
