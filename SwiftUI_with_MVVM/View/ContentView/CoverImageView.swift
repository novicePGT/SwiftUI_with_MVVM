//
//  CoverImageView.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/09/04.
//

import SwiftUI

struct CoverImageView: View {
    
    // property
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        TabView {
            ForEach(vm.coverImages) { cover in
                Image(cover.name)
                    .resizable()
                    .scaledToFit()
            } //:LOOP
        } //:TABVIEW
        .tabViewStyle(.page)
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView(vm: AnimalViewModel())
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
