//
//  LaunchInformation.swift
//  Launch Tracker
//
//  Created by idriss on 1/8/24.
//

import SwiftUI

struct Appetizer: Decodable, Identifiable{
    // Define Array
    let id: String     // Unique Id
    let upcomingLaunchImage: String     //Generate Image base on Location
    let upcomingLaunchTitle: String     // Title of launch
    let upcomingLaunchDate: String      // Launch Date
    let upcomingLaunchTime: String      // Launch time w/ converstion in case
    let upcomingLaunchBase: String      // Location of the base
    let upcomingLaunchLocation: String  // Launch Location
    let upcomingLaunchRocket: String    // Type of rocket
    let upcomingLaunchDescription: String //Decription
    let upcomingLaunchCompany: String       // Company
    let url: String                            // URL to watch the launch
    
    // URL string wrapper *** Changing the string to URL****
    var urlString: URL? {
            URL(string: url)
        }
}
// Mock Data Test to see if the data will appear
struct MockData {
    static let upcomingmockdata = [
        // Data One Array
        Appetizer(id: "0", upcomingLaunchImage: "Falcon-9-Image", upcomingLaunchTitle: "Idriss Kacou Launch", upcomingLaunchDate: "June 5, 2024", upcomingLaunchTime: "1200 AM", upcomingLaunchBase: "Vandenberg", upcomingLaunchLocation: "Lompoc", upcomingLaunchRocket: "Falcon 10", upcomingLaunchDescription: "A SpaceX Falcon 9 rocket will launch the Starlink 7-10 mission on Wednesday, January 10, 2024 at 5:06 AM (UTC).", upcomingLaunchCompany: "Space H", url: "https://www.youtube.com"),
        // Data Two Array
        Appetizer(id: "1", upcomingLaunchImage: "launchHomeIcone", upcomingLaunchTitle: "Idriss Kacou Launch 2", upcomingLaunchDate: "June 5, 2024", upcomingLaunchTime: "1200 AM", upcomingLaunchBase: "Vandenberg", upcomingLaunchLocation: "Lompoc", upcomingLaunchRocket: "Falcon 10", upcomingLaunchDescription: "A SpaceX Falcon 9 rocket will launch the Starlink 7-10 mission on Wednesday, January 10, 2024 at 5:06 AM (UTC).", upcomingLaunchCompany: "Space H", url: "https://www.rocketlaunch.live")
    ]
}

// Define your test model for ApiUrl
struct ApiUrl: Decodable {
    let request: [Appetizer]
}
