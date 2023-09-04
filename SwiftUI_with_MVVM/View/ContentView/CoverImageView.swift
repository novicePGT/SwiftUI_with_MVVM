//
//  CoverImageView.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/09/04.
//

import SwiftUI

struct CoverImageView: View {
    
    // property
    @ObservedObject var vm: AniamlViewModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView(vm: AnimalViewModel())
    }
}
