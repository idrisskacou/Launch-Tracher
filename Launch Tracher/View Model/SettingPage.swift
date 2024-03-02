//
//  SettingPage.swift
//  Launch Tracher
//
//  Created by idriss on 2/17/24.
//

import SwiftUI

struct SettingPage: View {
    var body: some View {
        VStack{
            Text("Setting Page")
                .font(.title)
            Text("Under maintenance")
                .font(.subheadline)
                .foregroundStyle(.red)
        }
    }
}

#Preview {
    SettingPage()
}
