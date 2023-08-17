//
//  UserModelBasicView.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/08/17.
//

import SwiftUI

struct UserModelBasicView: View {
    
    // property
    @State var users: [UserModel] = [
        UserModel(displayName: "철수", userName: "철수는 마마보이얌", followerCount: 215, isChecked: true),
        UserModel(displayName: "짱구", userName: "짱구는 못말려", followerCount: 1004, isChecked: true),
        UserModel(displayName: "맹구", userName: "맹구는 코찔찔이얌", followerCount: 15, isChecked: false),
        UserModel(displayName: "유리", userName: "유리는 곰인형 패는편이얌", followerCount: 27, isChecked: false)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack (spacing: 20) {
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        } // :vstack
                        
                        Spacer()
                        
                        if user.isChecked {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        } // :vstack
                    } // :hstack
                    .padding(.vertical ,10)
                } // :loop
            } // list
        } // :navigationview
        .navigationTitle("회원 리스트")
    }
}

struct UserModelBasicView_Previews: PreviewProvider {
    static var previews: some View {
        UserModelBasicView()
    }
}
