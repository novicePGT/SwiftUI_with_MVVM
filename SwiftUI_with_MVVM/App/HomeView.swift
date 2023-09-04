//
//  HomeView.swift
//  SwiftUI_with_MVVM
//
//  Created by 박근태 on 2023/08/25.
//

import SwiftUI

struct HomeView: View {
    
    // property
    @StateObject var vm: AnimalViewModel = AnimalViewModel()
    
    var body: some View {
        TabView {
            ContentView(vm: vm)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
            
            // video view
            VideoView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("비디오")
                }
            
            GallaryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("갤러리")
                }
            
            InfoView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("앱 정보")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
