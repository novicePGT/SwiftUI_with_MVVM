//
//  DetailGallery.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/09/07.
//

import SwiftUI

struct DetailGallery: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
        }
    }
}

struct DetailGallery_Previews: PreviewProvider {
    static var previews: some View {
        DetailGallery(animal: Animal.sampleAniaml)
    }
}
