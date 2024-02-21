//
//  BottomTabBar.swift
//  Launch Tracher
//
//  Created by idriss on 2/16/24.
//

import SwiftUI

struct bottomTabBar: View {
    init(){
        UITabBar.appearance().isHidden = false
    }
    var body: some View {
        HStack{
            TabView(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/,
                    content:  {
                UpcomingLaunch()
                    .tabItem { Image(systemName: "house"); Text("Home") }
                    .tag(1)
                CalenderLaunch()
                    .tabItem { Image(systemName: "calendar"); Text("Calendar") }
                    .tag(2)
                MapLaunch()
                    .tabItem { Image(systemName: "map"); Text("Map") }
                SettingPage()
                    .tabItem { Image(systemName: "gear"); Text("Settings") }
                    .tag(3)
            })
        }
    }
}

#Preview {
    bottomTabBar()
}
