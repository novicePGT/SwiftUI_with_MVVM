//
//  FruitViewModel.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/08/21.
//

import Foundation

class FruitViewModel: ObservableObject {
    // property
    // MVVM 아키텍처에서는 뷰에서는 오직 UI 만, Function 등 로직은 뷰모델에서 진행된다.
    
    // published wrapper 는 @State 와 비슷하게 상태값을 선언하는데, class 안에서는 @Published 를 사용한다는 점이 다른 점이다.
    // @Published 는 Fruit 배열의 값이 View 에서 변경이 되면 FruitViewModel 에서 새로운 변경사항을 알아차려서 변경한다는 점이다.
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruit()
    }
    
    // function: Fruit 생성하고 Array 에 추가하는 함수
    func getFruit() {
        let fruit1 = FruitModel(name: "딸기", count: 1)
        let fruit2 = FruitModel(name: "사과", count: 12)
        let fruit3 = FruitModel(name: "복숭아", count: 33)
        
        // 3초 딜레이 후, fruitArray 에 선언된 값을 집어넣기
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    // fruitArray 에서 값을 삭제하는 로직
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}
