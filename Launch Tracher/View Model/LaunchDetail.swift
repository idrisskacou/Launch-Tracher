//
//  LaunchDetail.swift
//  Launch Tracker
//
//  Created by idriss on 1/8/24.
//

import SwiftUI

struct LaunchDetail: View {
    var upcomingLaunchInfo: LaunchInformation
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            Image(upcomingLaunchInfo.upcomingLaunchImage)
                .resizable()
                .scaledToFit()
                .frame(height: 170)
                .cornerRadius(12)
            
            Text(upcomingLaunchInfo.upcomingLaunchTitle)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            HStack(spacing: 40){
                Label(upcomingLaunchInfo.upcomingLaunchDate, systemImage: "calendar.circle.fill")
                //Text(upcomingLaunchInfo.upcomingLaunchDate)
                Text(upcomingLaunchInfo.upcomingLaunchTime) //clock
                    .fontWeight(.bold)
                    .font(.title3)
                    
            }
            Text(upcomingLaunchInfo.upcomingLaunchDescription)
                .font(.body)
                .padding()
            Spacer()
            Link(destination: upcomingLaunchInfo.url!, label: {
                Text("Watch Now")
                    .bold()
                    .font(.title)
                    .frame(width: 280, height: 50, alignment: .center)
                    .background(Color(.red))
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .padding(.bottom, 20.0)
            })
            Spacer()
        }
    }
}

#Preview {
    LaunchDetail(upcomingLaunchInfo: UpcomingLaunchList.toTenUpcomingLaunch.first!)
    
}
