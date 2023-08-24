//
//  AppStorageBasic.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/08/23.
//

import SwiftUI

struct AppStorageBasic: View {
    
    // property
    // 일반적인 데이터
    @State var generalName: String?
    
    // AppStorage 를 사용하면 앱을 열 때 자동으로 키에서 이름을 가져옵니다.
    @AppStorage("name") var appStorageName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            // 일반적인 @State
            VStack(spacing: 10) {
                Text("@State 로 저장")
                    .font(.headline)
                
                Text(generalName ?? "당신의 이름은 무엇인가요?") // ?? 는 옵셔널 타입일 때 오른쪽에 있는 것으로 초기값을 만듦
                
                Button {
                    generalName = "박근태"
                } label: {
                    Text("이름 불러오기")
                } //: BUTTON
            } //: VSTACK
            .padding()
            .border(.green)
            
            // @AppStorage 사용
            VStack(spacing: 10) {
                Text("@AppStorage 사용")
                    .font(.headline)
                Text(appStorageName ?? "당신의 이름은 무엇인가요?")
                
                Button {
                    appStorageName = "박근퉷"
                } label: {
                    Text("이름 불러오기")
                } //: BUTTON
            } //: VSTACK
            .padding()
            .border(.cyan)
        } //: VSTACK
    }
}

struct AppStorageBasic_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBasic()
    }
}
