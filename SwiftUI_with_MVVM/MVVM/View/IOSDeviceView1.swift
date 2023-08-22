//
//  IOSDeviceView1.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/08/22.
//

import SwiftUI

struct IOSDeviceView1: View {
    
    // 처음 ViewModel 을 초기화 할 때는 @StateObject 로 불러오기 !
    @StateObject var viewModel: IOSDeviceViewModel = IOSDeviceViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.iOSDeviceArray) { item in
                    NavigationLink {
                        IOSDeviceView2(selectedItem: item.name)
                    } label: {
                        Text(item.name)
                    }

                }
            } //: list
        } //: navigationView
        .environmentObject(viewModel)
    }
}

struct IOSDeviceView1_Previews: PreviewProvider {
    static var previews: some View {
        IOSDeviceView1()
    }
}
