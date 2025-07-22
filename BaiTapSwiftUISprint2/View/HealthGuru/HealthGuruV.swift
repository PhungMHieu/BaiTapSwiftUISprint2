//
//  HealthGuruV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 22/7/25.
//

import SwiftUI

struct HealthGuruV: View {
//    @State private var lstData: [String]
    @StateObject private var measurement = MeasurementManager()
//    = ["Pulse 90", "SpO2 95%", "BPM 120", "ECG 120", "Respiratory Rate 20", "Pulse 100", "SpO2 90%", "BPM 110", "ECG 110", "Respiratory Rate 10"]
////    = []
    @State private var toggled: Bool = false
    var body: some View {
//        ZStack {
//            Rectangle().frame(maxWidth: .infinity,maxHeight: .)
            VStack (alignment:.leading){
                Text("Health Guru")
                    .font(.system(size: 32))
                    .fontWeight(.semibold)
                    .padding(.leading)
                Button {
                    toggled.toggle()
                } label: {
                    ZStack() {
                        Image(.icCTAMeasure)
                        Image(.icXMLID482)
                    }
                    .frame(maxWidth: .infinity)
                }
                .sheet(isPresented: $toggled) {
                    //                    Text("Hello world")
                    //                @State
                    HStack {
                        LabelTextFieldV(text: "Hello", type: .pulse)
                        LabelTextFieldV(text: "Hello", type: .pulse)
                    }
                    Button {
                        measurement.addMeasurement(.init(pulse: 100, hrv: 100))
                        toggled.toggle()
                    } label: {
                        Text("Add")
                    }
                }
                //                }
                NavigationStack {
                    List{
                        ForEach(measurement.measurements) { data in
                            HStack{
                                Text("\(data.hrv)")
                                Text("\(data.pulse)")
                                Text("\(data.status)")
                            }
                            .listRowSeparator(.hidden)
                            .cornerRadius(16)
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .background(Color(uiColor: .backlground1))
//                    .background(UIColo)
//                    .onAppear{
//                        UITableView.appearance().separatorStyle = .none
//                        UITableView.appearance().backgroundColor = .blue
//                    }
//                    .background(Color.clea)
//                    .background(Color.clear)
//                    .background(Color.background1)
//                    .scrollContentBackground(Color.clear)
                    //                .background(Color.backlground1)
                    //                .background(Color.black)
                    .overlay {
                        if(measurement.measurements.isEmpty){
                            
                            VStack(alignment: .leading) {
                                RateIndexV()
                                HStack {
                                    Image(.icLike5)
                                    Text("Track daily")
                                }
                                Text("Click heart icon to log your data")
                            }
//                            .background(Color.blue)
                        }
                    }
                }
//                .background(Color.blue)
                
                //                .navigationTitle(Text("List").padding())
                
                //            }
                //            Spacer()
            }
            .background(Color(uiColor: .backlground1))
        }
        
//        .background(Color.background1)
//        .background(Color.back)
//        .background(Color.backlground1)
//        .background()
        //            if(lstData.isEmpty)
//    }
}

#Preview {
    HealthGuruV()
//        .background(Color.backlground1)
//        .background().background(Color.gray.opacity(0.2))
}
