//
//  LaunchListCell.swift
//  Launch Tracher
//
//  Created by idriss on 2/29/24.
//

import SwiftUI
//Single Cell loading for design
struct LaunchListCell: View {
    let launch: Appetizer
    var body: some View {
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
    }
}

#Preview {
    LaunchListCell(launch: MockData.upcomingmockdata.first!)
}
