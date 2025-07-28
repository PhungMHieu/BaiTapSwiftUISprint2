//
//  TabViewManager.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 26/7/25.
//

import Foundation
import Combine
import SwiftUI
enum OnBoardingKey:String{
    case currentTabIndex
    case isCompleted
}
class TabViewManager: ObservableObject {
    
    @Published var tabs: [OnBoardPage:[HealGrid]]
    @Published var currentTab: OnBoardPage = .page1
    @Published var isCurrentPageSelected: Bool = true
    @AppStorage(OnBoardingKey.currentTabIndex.rawValue)
    var storeTabIndex:Int = 0
    @AppStorage(OnBoardingKey.isCompleted.rawValue)
    var isCompleted:Bool = false
    private var cancellables = Set<AnyCancellable>()
    init() {
        self.tabs = [:]
        for page in OnBoardPage.allCases {
            tabs[page] = page.itemPage
        }
        Publishers.CombineLatest($tabs, $currentTab)
            .map{ tabItems, currentTab in
                tabItems[currentTab]?.contains(){ item in
                    item.isSelected
                }
                ?? false
            }
            .assign(to: &$isCurrentPageSelected)
    }
    func toggleItem(for current: OnBoardPage, at index:Int){
        tabs[current]?[index].isSelected.toggle()
    }
    func goToNextPage(){
//        withAnimation(.easeInOut) {
            if let currentIndex = OnBoardPage.allCases.firstIndex(of: currentTab){
                if (currentIndex + 1 < OnBoardPage.allCases.count){
                    withAnimation(.easeInOut) {
                        currentTab = OnBoardPage.allCases[currentIndex + 1]
                    }
                }else{
                    isCompleted = true
                }
            }
//        }
        
    }
}
