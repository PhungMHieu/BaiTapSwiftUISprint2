//
//  ContentView.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//            Button {
//                print("Tapped out")
//            } label: {
//                Text("Hello world")
//            }
//
//        }
//        .padding()
//    }
//}
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Đi đến chi tiết", value: "Hello, Detail View!")
                NavigationLink("Đi đến tao", value: "Hello, world")
            }
            .navigationTitle("Trang chính")
            .navigationDestination(for: String.self) { value in
                DetailView(message: value)
            }
        }
    }
}

struct DetailView: View {
    let message: String

    var body: some View {
        Text(message)
            .font(.largeTitle)
            .padding()
            .navigationTitle("Chi tiết")
    }
}

#Preview {
    ContentView()
}
