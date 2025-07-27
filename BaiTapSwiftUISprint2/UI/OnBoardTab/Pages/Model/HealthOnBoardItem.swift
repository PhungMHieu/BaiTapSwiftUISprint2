//
//  HealthOnBoardItem.swift
//  BaiTapSwiftUISprint2
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//

import Foundation


struct HealGrid:Hashable,Identifiable{
    let id = UUID().uuidString
    var icon:ImageResource
    var title:String
    var isSelected:Bool = false
}
