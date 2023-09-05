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
                    .frame(height: CGFloat.screenHeight * 0.4)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(vm.animals) { animal in
                    NavigationLink {
                        // destination
                    } label: {
                        AnimalListView(animal: animal)
                            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                    }

                }
                // Credit
                CreditView()
                    .hCenter()
            }//: List
            .listStyle(.plain)
            .navigationBarTitle("멸종위기 동물들")
        }//: Navigationview
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vm: AnimalViewModel())
    }
}
