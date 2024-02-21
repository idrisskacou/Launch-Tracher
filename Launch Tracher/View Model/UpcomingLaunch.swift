//
//  UpcomingLaunch.swift
//  Launch Tracker
//
//  Created by idriss on 1/8/24.
//

import SwiftUI
import CoreData

struct UpcomingLaunch: View {
    var upcomingLaunchInfo: [LaunchInformation] = UpcomingLaunchList.toTenUpcomingLaunch
    var body: some View {
        NavigationView{
            
            List(upcomingLaunchInfo, id: \.id){ launch in
                NavigationLink(destination: LaunchDetailView(upcomingLaunchInfo: launch), label: {
                    HStack{
                        Image(launch.upcomingLaunchImage)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            .presentationCornerRadius(5)
                        VStack(alignment: .leading, spacing: 5){
                            Text(launch.upcomingLaunchTitle)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                                .minimumScaleFactor(0.5)
                            Text(launch.upcomingLaunchDate)
                                .font(.subheadline)
                                .fontWeight(.regular)
                            Text(launch.upcomingLaunchDescription)
                                .lineLimit(2)
                        }
                    }
                })
            }
            .navigationTitle("Upcoming Launch")
        }
    }
}

#Preview {
    UpcomingLaunch()
    //BottomTabBar()
}
