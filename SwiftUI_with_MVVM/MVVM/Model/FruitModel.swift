//
//  FruitModel.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/08/21.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
