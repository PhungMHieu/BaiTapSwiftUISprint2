//
//  InformationHeartV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 23/7/25.
//

import SwiftUI

struct InformationHeartV: View {
    @Binding var pulse:String
    @Binding var hrv:String
    @Binding var toggled:Bool
    @ObservedObject var measurement: MeasurementManager
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
//            Text("Information")
            HStack(spacing:16){
                LabelTextFieldV(text: $pulse, type: .pulse)
                LabelTextFieldV(text: $hrv, type: .hrv)
            }
            Spacer()
            Button {
                guard let p = Int(pulse), let h = Int(hrv) else{
                    return
                }
                measurement.addMeasurement(Measurement(pulse: p, hrv: h))
                toggled.toggle()
            } label: {
                Text("Add")
            }
            .buttonStyle(ButtonStyleOnBoard())
        }
//        .padding(16)
        .padding(.horizontal,16)
        .padding(.bottom,16)
        .padding(.top,-32)
        .background(Color.background)
        .toolbar {
            ToolbarItem (placement: .cancellationAction){
                Button {
//                   toggled.toggle()
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
//        .navigationTitle("Information")
//        .navigationBarTitleDisplayMode(.inline) // hoặc .large nếu thích
//        .navigationTitle("Inf")
//        .ignoresSafeArea(.container, edges: .top)
        
    }
}

//#Preview {
////    InformationHeartV(pulse: .constant(""), hrv: .constant(""), toggled: .constant(""), measurement: MeasurementManager)
//}
#Preview {
    // Tạo các state mẫu
    @State var pulse = "72"
    @State var hrv = "55"
    @State var toggled = false
    let measurementManager = MeasurementManager()

    return
    InformationHeartV(
        pulse: $pulse,
        hrv: $hrv,
        toggled: $toggled,
        measurement: measurementManager
    )
}
