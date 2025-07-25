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
//    @State var pulse: String = ""
//    @State var hrv: String = ""
    @State private var toggled: Bool = false
    var body: some View {
//        ZStack {
//            Rectangle().frame(maxWidth: .infinity,maxHeight: .)
            VStack (spacing: 0){
                Text("Health Guru")
                    .font(.system(size: 32))
                    .fontWeight(.semibold)
                    .padding(.leading)
                    .frame(maxWidth: .infinity,alignment: .leading)
                Button {
                    toggled.toggle()
                } label: {
                    Image(.icCTAMeasure)
//                        .resizable()
//                        .frame(maxWidth: .infinity)
                        .frame(height: 241)
                        .scaledToFit()
                }
                .frame(maxWidth: .infinity)
                .padding(.top,65)
//                .padding()
                .sheet(isPresented: $toggled) {
                    NavigationStack {
                        InformationHeartV(toggled: $toggled, measurement: measurement)
                    }
                }
                //                }
//                NavigationStack {
                    List{
                        ForEach(measurement.measurements) { data in
//                            HStack{
//                                Text("\(data.hrv)")
//                                Text("\(data.pulse)")
//                                Text("\(data.status)")
//                            }
                            RateIndexV(measurement: data)
//                                .foregroundColor(.good)
//                            .background(Color(uiColor: .neutral5))
                            .listRowSeparator(.hidden)
//                            .cornerRadius(16)
                        }
                        .listRowSpacing(12)
                        .listRowBackground(Color.clear)
                    }
                    .scrollContentBackground(.hidden)
                    .background(Color(uiColor: .backlground1))
                    .listStyle(.plain)
//                    .padding(0)
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
                    
                
                
                    .overlay() {
                        if(measurement.measurements.isEmpty){
                            VStack(spacing:24) {
                                RateIndexV()
                                TrackDailyClickV()
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal,16)
//                            .background(Color.blue)
                        }
                    }
//                }
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

struct TrackDailyClickV: View {
    var body: some View {
        VStack(spacing:4) {
            HStack(spacing:0) {
                Image(.icLike5)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:24,height:24)
                    .clipped()
                Text("Track daily")
                    .font(.system(size: 16, weight: .semibold))
//                    .letter(spacing: 1)
//                    .frame(height:24)
                Spacer()
                //                                            .lineSpacing(24-1)
            }
            .frame(maxWidth: .infinity)
//            .padding(0)
            HStack {
                Text("Click heart icon to log your data")
                    .font(.system(size: 14))
                    .foregroundColor(.neutral2)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
        .padding(16)
        .background(Color.neutral5)
        .cornerRadius(16)
    }
}

struct ExtractedView: View {
    @Binding var pulse:String
    @Binding var hrv:String
    @Binding var toggled:Bool
    @ObservedObject var measurement: MeasurementManager
    var body: some View {
        VStack {
            HStack {
                LabelTextFieldV(text: $pulse, type: .pulse)
                LabelTextFieldV(text: $hrv, type: .hrv)
            }
            Button {
                guard let p = Int(pulse), let h = Int(hrv) else{
                    return
                }
                measurement.addMeasurement(Measurement(pulse: p, hrv: h))
                
                toggled.toggle()
            } label: {
                Text("Add")
            }
            
        }
    }
}
