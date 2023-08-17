//
//  UserModel.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/08/17.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isChecked: Bool
}
