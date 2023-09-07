//
//  DetailFact.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/09/07.
//

import SwiftUI

struct DetailFact: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TAB
            .tabViewStyle(.page)
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //:GROUPBOX
    }
}

struct DetailFact_Previews: PreviewProvider {
    static var previews: some View {
        DetailFact(animal: Animal.sampleAniaml)
    }
}
