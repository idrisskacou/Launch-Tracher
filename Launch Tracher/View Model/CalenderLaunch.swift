//
//  CalenderLaunch.swift
//  Launch Tracher
//
//  Created by idriss on 2/17/24.
//

import SwiftUI

struct CalenderLaunch: View {
    var body: some View {
        VStack{
            Text("Calender")
                .font(.title)
            Text("Under maintenance")
                .font(.subheadline)
                .foregroundStyle(.red)
            //            .inspector(isPresented: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/) {
            //            Text("Content")
            //        }
        }
    }
}

#Preview {
    CalenderLaunch()
}
