//
//  IOSDeviceView3.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/08/22.
//

import SwiftUI

struct IOSDeviceView3: View {
    
    // property
    // @StateObject 에서 선언한 ViewModel 을 @EnvironmentObject 를 통해 가져오기
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.iOSDeviceArray) { item in
                        Text(item.name)
                            .padding()
                    }
                }
            }
        }
    }
}

struct IOSDeviceView3_Previews: PreviewProvider {
    static var previews: some View {
        IOSDeviceView3()
            .environmentObject(IOSDeviceViewModel())
    }
}
