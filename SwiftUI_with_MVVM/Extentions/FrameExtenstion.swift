//
//  FrameExtenstion.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/08/24.
//

import Foundation
import UIKit
import SwiftUI

// MARK: - ResponsvieScreen

extension CGFloat {
    static let screenWidth = UIScreen.main.bounds.width // 반응형으로 아이폰의 크기마다 자동적으로 저장이 된다.
    static let screenHeight = UIScreen.main.bounds.height
}

// MARK: - Frame Modifier
extension View {
    // Vertical Center
    func vCenter() -> some View {
        self.frame(maxHeight: .infinity, alignment: .center)
    }
    
    // Vertical Top
    func vTop() -> some View {
        self.frame(maxHeight: .infinity, alignment: .top)
    }
    
    // Vertical Bottom
    func vBottom() -> some View {
        self.frame(maxHeight: .infinity, alignment: .bottom)
    }
    
    // Horizontal Center
    func hCenter() -> some View {
        self.frame(maxWidth: .infinity, alignment: .center)
    }
    
    // Horizontal Leading
    func hLeading() -> some View {
        self.frame(maxWidth: .infinity, alignment: .leading)
    }
    
    // Horizontal Trailing
    func hTrailing() -> some View {
        self.frame(maxWidth: .infinity, alignment: .trailing)
    }
}

