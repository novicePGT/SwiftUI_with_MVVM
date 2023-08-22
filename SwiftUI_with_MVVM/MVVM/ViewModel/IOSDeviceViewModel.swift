//
//  IOSDeviceViewModel.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/08/22.
//

import Foundation

class IOSDeviceViewModel: ObservableObject {
    
    // property
    @Published var iOSDeviceArray: [IOSDeviceModel] = []
    
    init() {
        getData()
    }
    
    // function
    func getData() {
        let iphone = IOSDeviceModel(name: "아이폰")
        let iPad = IOSDeviceModel(name: "아이패드")
        let iMac = IOSDeviceModel(name: "아이맥")
        let appleWatch = IOSDeviceModel(name: "애플워치")
        let macBook = IOSDeviceModel(name: "맥북")
        
        self.iOSDeviceArray.append(iphone)
        self.iOSDeviceArray.append(iPad)
        self.iOSDeviceArray.append(iMac)
        self.iOSDeviceArray.append(appleWatch)
        self.iOSDeviceArray.append(macBook)
    }
}
