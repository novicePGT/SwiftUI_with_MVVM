//
//  ContentView.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/08/24.
//

import SwiftUI

struct ContentView: View {
    
    // property
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView(vm: vm)
            }//: List
            .navigationBarTitle("멸종위기 동물들")
        }//: Navigationview
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vm: AnimalViewModel())
    }
}
