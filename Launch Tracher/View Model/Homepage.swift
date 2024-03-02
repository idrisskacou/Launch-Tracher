//
//  BottomTabBar.swift
//  Launch Tracher
//
//  Created by idriss on 2/16/24.
//

import SwiftUI

// Home page that will be loading
struct Homepage: View {
    var body: some View {
        HStack{
            // Buttom Menu call function
            BottomMenuTabBar()
        }
    }
}

#Preview {
    Homepage()
}
