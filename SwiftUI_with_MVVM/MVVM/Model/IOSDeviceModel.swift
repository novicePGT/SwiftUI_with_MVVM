//
//  IOSDeviceModel.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/08/22.
//

import Foundation

struct IOSDeviceModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
}
