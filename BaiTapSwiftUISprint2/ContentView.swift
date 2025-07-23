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
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            List {
//                NavigationLink("Đi đến chi tiết", value: "Hello, Detail View!")
//                NavigationLink("Đi đến tao", value: "Hello, world")
//            }
//            .navigationTitle("Trang chính")
//            .navigationDestination(for: String.self) { value in
//                DetailView(message: value)
//            }
//        }
//    }
//}
//
//struct DetailView: View {
//    let message: String
//
//    var body: some View {
//        Text(message)
//            .font(.largeTitle)
//            .padding()
//            .navigationTitle("Chi tiết")
//    }
//}
import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("🏠 Home")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .foregroundColor(.red)
                        Text("Home")
                    }
                }
                .tag(0)
            
            Text("🔍 Search")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 1 ? "magnifyingglass.circle.fill" : "magnifyingglass")
                            .foregroundColor(.green)
                        Text("Search")
                    }
                }
                .tag(1)
            
            Text("👤 Profile")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 2 ? "person.fill" : "person")
                            .foregroundColor(.blue)
                        Text("Profile")
                            .font(.system(size: 30))
                    }
                }
//                .too
                .tag(2)
        }
        .accentColor(.purple) // thay đổi màu chọn
    }
}

#Preview {
    ContentView()
}
