//
//  MeasurementManager.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 27/7/25.
//
import Foundation
import Combine
class MeasurementManager: ObservableObject{
    @Published var measurements: [Measurement] = []
    @Published var pulse:String = ""
    @Published var hrv:String = ""
    @Published var canAddMeasurement: Bool = false
    
    private var cancellables = Set<AnyCancellable>()
    init() {
        Publishers.CombineLatest($pulse, $hrv)
            .sink { [weak self] pulseStr, hrvStr in
                if let p = Int(pulseStr), let h = Int(hrvStr), p < 300, h < 300 {
                    self?.canAddMeasurement = true
                } else {
                    self?.canAddMeasurement = false
                }
            }
            .store(in: &cancellables)
    }
    func addMeasurement(){
        guard let p = Int(pulse), let h = Int(hrv) else{
            return
        }
        self.measurements.append(Measurement(pulse: p, hrv: h))
    }
}
