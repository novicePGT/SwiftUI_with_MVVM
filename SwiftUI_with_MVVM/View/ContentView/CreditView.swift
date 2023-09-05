//
//  CreditView.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/09/05.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        VStack {
            Text("""
    COPYRIGHT PARKGEUNTAE
    ALL RIGHT RESERVED
    CREATE BY SWIFTUI WITH MVVM
""")
            .font(.footnote)
            .multilineTextAlignment(.center)
            .padding()
            .opacity(0.5)
        }
    }
}

struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
    }
}
