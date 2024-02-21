//
//  BottomMenuTabBar.swift
//  Launch Tracher
//
//  Created by idriss on 2/20/24.
//

import SwiftUI

struct BottomMenuTabBar: View {
    init(){
        UITabBar.appearance().isHidden = false
    }
    var body: some View {
        HStack{
            HStack{
                TabView(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/,
                        content:  {
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
}

#Preview {
    BottomMenuTabBar()
}
