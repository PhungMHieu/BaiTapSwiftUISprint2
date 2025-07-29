//
//  OnBoardTabView.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//

import SwiftUI
struct OnBoardTabView: View {
    @StateObject var onBoardManager =  TabViewManager()
    
    @AppStorage(OnBoardingKey.currentTabIndex.rawValue) var storeTabIndex:Int = 0
    @AppStorage(OnBoardingKey.isCompleted.rawValue) var isCompleted:Bool = false
    
    var body: some View {
        VStack(spacing:0) {

            TabView(selection: $onBoardManager.currentTab) {
                ForEach(OnBoardPage.allCases,id: \.hashValue) { page in
                    if(page.rawValue == 0){
                        Page1V()
                            .tag(page)
                            .background(Color.background)
                            .gesture(DragGesture())
                    }else{
                            Page234V(
                                data:Binding(get: {
                                onBoardManager.tabs[page]!
                            }, set: {
                                onBoardManager.tabs[page] = $0
                            })
                            ,
                                title: page.titlePage)
                            .tag(page)
                            .background(Color.backgroundApp2)
                            .gesture(DragGesture())
                    }
                }
            }
            .onChange(of: onBoardManager.currentTab, perform: { newValue in
                storeTabIndex = newValue.rawValue
            })
            .onAppear(){
                UITabBar.appearance().backgroundColor = .neutral5
                onBoardManager.currentTab = OnBoardPage(rawValue: storeTabIndex) ?? .page1
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            Button {
                onBoardManager.goToNextPage()
                if(storeTabIndex+1==OnBoardPage.allCases.count){
                    isCompleted = true
                }
            } label: {
                Text("Continue")
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
            }
            .modifier(ButtonOnBoardModifier())
            .background(onBoardManager.isCurrentPageSelected || onBoardManager.currentTab == .page1 ? Color.primaryApp:Color.neutral3)
            .cornerRadius(16)
            .padding(.bottom, 16)
            .padding(.horizontal,16)
            .disabled(!onBoardManager.isCurrentPageSelected && onBoardManager.currentTab != .page1)
        }
        .background(onBoardManager.currentTab == .page1 ? .background : .backgroundApp2)
    }
}

#Preview {
//    OnBoardTabView(selection: 0)
}
