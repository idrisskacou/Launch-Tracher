//
//  UpcomingLaunch.swift
//  Launch Tracker
//
//  Created by idriss on 1/8/24.
//

import SwiftUI
import CoreData

struct UpcomingLaunch: View {
    // Home view of the homepage
    @State private var upcomingLaunchInfo: [Appetizer] = []
    
    var body: some View {
        NavigationView{
            
            List(upcomingLaunchInfo){ launch in
                NavigationLink(destination: LaunchDetail(upcomingLaunchInfo: launch), label: {
                    LaunchListCell(launch: launch)
                })
//                LaunchListCell(launch: launch)
            }
            .navigationTitle("VANDENBERG LAUNCH")
        }
        .onAppear{
            getAppetizers()
        }
    }
    func getAppetizers() {
        NetworkManager.shared.getvandenbergAPI { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let launch):
                    self.upcomingLaunchInfo = launch
                    // Update the @State variable
                case .failure(let error):
                    print("Error fetching appetizers: \(error)")
                }
            }
        }
    }
    
    
}

#Preview {
    UpcomingLaunch()
    //BottomTabBar()
}
