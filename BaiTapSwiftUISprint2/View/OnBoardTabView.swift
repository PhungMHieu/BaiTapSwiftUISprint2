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
        TabView(selection: $selection) {
            Page1V().tag(1)
            LazyV().tag(2)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        Button {
            selection = (selection+1)%3
        } label: {
            Text("Next")
        }

    }
}

#Preview {
    OnBoardTabView()
}
