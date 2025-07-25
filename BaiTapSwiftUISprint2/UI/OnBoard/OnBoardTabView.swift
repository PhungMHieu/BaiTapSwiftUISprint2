//
//  OnBoardTabView.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//

import SwiftUI

struct OnBoardTabView: View {
    @State var selection: Int = 1
    var body: some View {
        VStack(spacing:0) {
            TabView(selection: $selection) {
                ForEach(OnBoardPage.allCases,id: \.hashValue) { page in
                    if(page.page == 1){
                        Page1V().tag(page.page)
                    }else{
                        LazyV(data: page.itemPage)
                            .tag(page.page)
                    }
                }
                
//                LazyV().tag(2)
//                LazyV().tag(3)
//                LazyV().tag(4)
            }
            //        .background()
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            Button {
                selection = (selection+1)%5
            } label: {
                Text("Continue")
            }
            .buttonStyle(ButtonStyleOnBoard())
            .padding(.horizontal,16)
            .animation(.smooth, value: 1)
            
        }
        .background(.backgroundApp2)
//        .padding(16)
    }
}

#Preview {
    OnBoardTabView()
}
