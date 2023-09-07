//
//  ExternalWebLink.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/09/07.
//

import SwiftUI

struct ExternalWebLink: View {
    
    //property
    let aniaml: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("멸종 위기 야생생물 포털")
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(destination: (URL(string: aniaml.link)!)) {
                        Text(aniaml.name)
                    }
                    .foregroundColor(.accentColor)
                }
            }
        }
    }
}

struct ExternalWebLink_Previews: PreviewProvider {
    static var previews: some View {
        ExternalWebLink(aniaml: Animal.sampleAniaml)
    }
}
