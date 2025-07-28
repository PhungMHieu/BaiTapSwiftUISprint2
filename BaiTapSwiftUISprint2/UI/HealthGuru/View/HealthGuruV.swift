//
//  HealthGuruV.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 22/7/25.
//

import SwiftUI

struct HealthGuruV: View {
    @StateObject private var measurement = MeasurementManager()
    @State private var toggled: Bool = false
    var body: some View {
            VStack (spacing: 0){
                Text("Health Guru")
                    .font(.system(size: 32))
                    .fontWeight(.semibold)
                    .padding(.leading)
                    .tracking(0.1)
                    .frame(maxWidth: .infinity,alignment: .leading)
                Button {
                    toggled.toggle()
                } label: {
                    Image(.icCTAMeasure)
                        .resizable()
                        .frame(height: 241)
                        .scaledToFit()
                }
                .frame(maxWidth: .infinity)
                .padding(.top,65)
                .padding(.bottom, 69)
                .sheet(isPresented: $toggled) {
                    NavigationStack {
                        InformationHeartV(toggled: $toggled, measurement: measurement)
                    }
                }
                    List{
                        ForEach(measurement.measurements) { data in
                            RateIndexV(measurement: data)
                                .padding(.horizontal,12)
                                .padding(.bottom,12)
                            .listRowSeparator(.hidden)
                        }
                        .listRowInsets(EdgeInsets())
                        .listRowBackground(Color.clear)
                    }
                    .scrollContentBackground(.hidden)
                    .background(Color(uiColor: .backlground1))
                    .listStyle(.plain)
                    .overlay(alignment: .top) {
                        if(measurement.measurements.isEmpty){
                            VStack(spacing:24) {
                                RateIndexV()
                                TrackDailyClickV()
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal,16)
                        }
                    }
            }
            .background(Color(uiColor: .backlground1))
        }
}

#Preview {
    HealthGuruV()
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
                    .padding(.bottom,4)
                    .tracking(0.2)
//                    .lineSpacing(24-16)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            HStack {
                Text("Click heart icon to log your data")
                    .font(.system(size: 14))
                    .tracking(0.4)
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
