//
//  FruitBasicView.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/08/21.
//

import SwiftUI

struct FruitBasicView: View {
    
    // property
    // @ObservedObject 사용해서 ViewModel 객체화 하기 -> SubView 에서 사용( 부모 뷰 값을 넘겨 받았을 경우)
//    @ObservedObject var fruitViewModel = FruitViewModel()
    // @StateObject 사용하여 ViewModel 객체화 하기 -> View가 처음 생성, 초기화 할 때, 부모 뷰에서 주로 사용 * 처음에는 @StateObject 사용 *
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack(spacing: 20) {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        } //: hstack
                    } //: loop
                } //: conditional
            } //: list
//            .onAppear {
//                fruitViewModel.getFruit()
//            }
            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: SecondScreen(),
                        label: {
                            Image(systemName: "arrow.right")
                                .font(.title)
                        }))
        } //: navigationview
        .navigationTitle("과일 리스트")
    }
}

// SecondScreen
struct SecondScreen: View {
    
    // property: subView 에서는 잊지말고 @ObservedObject 사용하자
    @ObservedObject var fruitViewModel = FruitViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack(spacing: 20) {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                } //: loop
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("뒤로 가기")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }

            } //: vstack
        }//: zstack
    }
}

struct FruitBasicView_Previews: PreviewProvider {
    static var previews: some View {
        FruitBasicView()
    }
}
