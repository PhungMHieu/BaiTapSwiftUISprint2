//
//  TestTextField.swift
//  BaiTapSwiftUISprint2
//
//  Created by Admin on 24/7/25.
//

import SwiftUI

struct TestTextField: View {
    
    var body: some View {
        var tmp = Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).foregroundColor(.red)
//        TextField("Hello World", text: .constant(""))
        TextField(text: .constant("")) {
            tmp
        }
    }
}

#Preview {
    TestTextField()
}
