//
//  AnimalViewModel.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/09/04.
//

import Foundation

class AnimalViewModel: ObservableObject {
    // property
    @Published var animals: [Animal] = Bundle.main.decode("animals.json")
    @Published var coverImages: [CoverImage] = Bundle.main.decode("covers.json")
}
