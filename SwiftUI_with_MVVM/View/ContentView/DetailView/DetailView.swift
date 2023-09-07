//
//  DetailView.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/09/07.
//

import SwiftUI

struct DetailView: View {
    
    //property
    let animal: Animal
    
    var body: some View {
        ScrollView {
            VStack (spacing: 20) {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.vertical, 10)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 25)
                    )
                
                Text(animal.headline)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.accentColor)
                    .padding()
                
                // Gallery
                Group {
                    DetailHead(headingImage: "photo.on.rectangle.angled", headingText: "\(animal.name) 사진들")
                    
                    DetailGallery(animal: animal)
                }
                
                // Description
                Group {
                    DetailHead(headingImage: "info.circle", headingText: "자세한 정보")
                    Text(animal.description)
                        .font(.subheadline)
                        .padding(.horizontal, 10)
                }
                
                // Fact
                Group {
                    DetailHead(headingImage: "location.magnifyingglass", headingText: "팩트체크")
                    DetailFact(animal: animal)
                }
                
                // Fact
                Group {
                    DetailHead(headingImage: "books.vertical", headingText: "참고 자료")
                    ExternalWebLink(aniaml: animal)
                }
                
                // Copyright
                Text(animal.copyright)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
                
            } //: VSTACK
            .navigationBarTitle("\(animal.name) 자세히 알아보기", displayMode: .inline)
        } //: SCROLLVIEW
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(animal: Animal.sampleAniaml)
        }
    }
}
