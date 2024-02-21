//
//  LaunchInformation.swift
//  Launch Tracker
//
//  Created by idriss on 1/8/24.
//

import SwiftUI

struct LaunchInformation{
    // Define Array
    var id = UUID()     // Unique Id
    var upcomingLaunchImage: String     //Generate Image base on Location
    var upcomingLaunchTitle: String     // Title of launch
    var upcomingLaunchDate: String      // Launch Date
    var upcomingLaunchTime: String      // Launch time w/ converstion in case
    var upcomingLaunchBase: String      // Location of the base
    var upcomingLaunchLocation: String  // Launch Location
    var upcomingLaunchRocket: String    // Type of rocket
    var upcomingLaunchDescription: String //Decription
    var upcomingLaunchCompany: String       // Company
    let url: URL                            // URL to watch the launch
    /*
    "id": 3760,
    "weather_summary": null,
    "weather_temp": null,
    "weather_condition": null,
    "weather_wind_mph": null,
    "weather_icon": null,
    "weather_updated": null,
     "media": [],
     "modified": null
     */
}

struct ApiUrl {
    
}
struct UpcomingLaunchList{
    // Sample Data
        // API from source
    static let toTenUpcomingLaunch = [
        LaunchInformation(upcomingLaunchImage: "launchHomeIcon",
                          upcomingLaunchTitle: "Starlink 7-10",
                          upcomingLaunchDate: "January 09, 2024",
                          upcomingLaunchTime: "09:06 PM",
                          upcomingLaunchBase: "SLC-4E, Vandenberg SFB",
                          upcomingLaunchLocation: "California, United States",
                          upcomingLaunchRocket: "Falcon 9",
                          upcomingLaunchDescription: "A SpaceX Falcon 9 rocket will launch the Starlink 7-10 mission on Wednesday, January 10, 2024 at 5:06 AM (UTC).",
                          upcomingLaunchCompany: "Space X",
                          url: URL(string: "https://www.youtube.com")!),
        
        LaunchInformation(upcomingLaunchImage: "Falcon-9-Image",
                          upcomingLaunchTitle: "Starlink 6-37",
                          upcomingLaunchDate: "January 15, 2024",
                          upcomingLaunchTime: "05:00 AM",
                          upcomingLaunchBase: "SLC-40, Cape Canaveral SFS",
                          upcomingLaunchLocation: "Florida, United States",
                          upcomingLaunchRocket: "Falcon 9",
                          upcomingLaunchDescription: "A SpaceX Falcon 9 rocket will launch the Starlink 7-10 mission on Wednesday, January 10, 2024 at 5:06 AM (UTC).",
                          upcomingLaunchCompany: "Space X",
                          url: URL(string: "https://www.rocketlaunch.live")!),
        LaunchInformation(upcomingLaunchImage: "Falcon-9-Image",
                          upcomingLaunchTitle: "Ax-3",
                          upcomingLaunchDate: "January 17",
                          upcomingLaunchTime: "02:11 PM",
                          upcomingLaunchBase: "LC-39A, Kennedy Space Center",
                          upcomingLaunchLocation: "Florida, United States",
                          upcomingLaunchRocket: "Falcon 9",
                          upcomingLaunchDescription: "Axiom Space's third private crew to the International Space Station.",
                          upcomingLaunchCompany: "Space X",
                          url: URL(string: "https://www.rocketlaunch.live")!),
        LaunchInformation(upcomingLaunchImage: "Falcon-9-Image",
                          upcomingLaunchTitle: "CRS2 NG-20 (Cygnus)",
                          upcomingLaunchDate: "January 29, 2024",
                          upcomingLaunchTime: "06:30 AM",
                          upcomingLaunchBase: "SLC-40, Cape Canaveral SFS",
                          upcomingLaunchLocation: "Florida, United States",
                          upcomingLaunchRocket: "Falcon 9",
                          upcomingLaunchDescription: "The first of 3 SpaceX launches for the Cygnus cargo capsule during Northrop Grumman's transition to the new Antares 330 launch vehicle.",
                          upcomingLaunchCompany: "Space X",
                          url: URL(string: "https://www.rocketlaunch.live")!),
        LaunchInformation(upcomingLaunchImage: "Falcon-9-Image",
                          upcomingLaunchTitle: "Starlink 7-10",
                          upcomingLaunchDate: "JAN-09",
                          upcomingLaunchTime: "09:06 PM",
                          upcomingLaunchBase: "SLC-4E, Vandenberg SFB",
                          upcomingLaunchLocation: "California, United States",
                          upcomingLaunchRocket: "Falcon 9",
                          upcomingLaunchDescription: "A SpaceX Falcon 9 rocket will launch the Starlink 7-10 mission on Wednesday, January 10, 2024 at 5:06 AM (UTC).",
                          upcomingLaunchCompany: "Space X",
                          url: URL(string: "https://www.rocketlaunch.live")!),
        LaunchInformation(upcomingLaunchImage: "Falcon-9-Image",
                          upcomingLaunchTitle: "Starlink 7-10",
                          upcomingLaunchDate: "JAN-09",
                          upcomingLaunchTime: "09:06 PM",
                          upcomingLaunchBase: "SLC-4E, Vandenberg SFB",
                          upcomingLaunchLocation: "California, United States",
                          upcomingLaunchRocket: "Falcon 9",
                          upcomingLaunchDescription: "A SpaceX Falcon 9 rocket will launch the Starlink 7-10 mission on Wednesday, January 10, 2024 at 5:06 AM (UTC).",
                          upcomingLaunchCompany: "Space X",
                          url: URL(string: "https://www.rocketlaunch.live")!),
        LaunchInformation(upcomingLaunchImage: "Falcon-9-Image",
                          upcomingLaunchTitle: "Starlink 7-10",
                          upcomingLaunchDate: "JAN-09",
                          upcomingLaunchTime: "09:06 PM",
                          upcomingLaunchBase: "SLC-4E, Vandenberg SFB",
                          upcomingLaunchLocation: "California, United States",
                          upcomingLaunchRocket: "Falcon 9",
                          upcomingLaunchDescription: "A SpaceX Falcon 9 rocket will launch the Starlink 7-10 mission on Wednesday, January 10, 2024 at 5:06 AM (UTC).",
                          upcomingLaunchCompany: "Space X",
                          url: URL(string: "https://www.rocketlaunch.live")!),
        LaunchInformation(upcomingLaunchImage: "Falcon-9-Image",
                          upcomingLaunchTitle: "Starlink 7-10",
                          upcomingLaunchDate: "JAN-09",
                          upcomingLaunchTime: "09:06 PM",
                          upcomingLaunchBase: "SLC-4E, Vandenberg SFB",
                          upcomingLaunchLocation: "California, United States",
                          upcomingLaunchRocket: "Falcon 9",
                          upcomingLaunchDescription: "A SpaceX Falcon 9 rocket will launch the Starlink 7-10 mission on Wednesday, January 10, 2024 at 5:06 AM (UTC).",
                          upcomingLaunchCompany: "Space X",
                          url: URL(string: "https://www.rocketlaunch.live")!),
        LaunchInformation(upcomingLaunchImage: "Falcon-9-Image",
                          upcomingLaunchTitle: "Starlink 7-10",
                          upcomingLaunchDate: "JAN-09",
                          upcomingLaunchTime: "09:06 PM",
                          upcomingLaunchBase: "SLC-4E, Vandenberg SFB",
                          upcomingLaunchLocation: "California, United States",
                          upcomingLaunchRocket: "Falcon 9",
                          upcomingLaunchDescription: "A SpaceX Falcon 9 rocket will launch the Starlink 7-10 mission on Wednesday, January 10, 2024 at 5:06 AM (UTC).",
                          upcomingLaunchCompany: "Space X",
                          url: URL(string: "https://www.rocketlaunch.live")!),
        LaunchInformation(upcomingLaunchImage: "Falcon-9-Image",
                          upcomingLaunchTitle: "Starlink 7-10",
                          upcomingLaunchDate: "JAN-09",
                          upcomingLaunchTime: "09:06 PM",
                          upcomingLaunchBase: "SLC-4E, Vandenberg SFB",
                          upcomingLaunchLocation: "California, United States",
                          upcomingLaunchRocket: "Falcon 9",
                          upcomingLaunchDescription: "A SpaceX Falcon 9 rocket will launch the Starlink 7-10 mission on Wednesday, January 10, 2024 at 5:06 AM (UTC).",
                          upcomingLaunchCompany: "Space X",
                          url: URL(string: "https://www.rocketlaunch.live")!),
        LaunchInformation(upcomingLaunchImage: "Falcon-9-Image",
                          upcomingLaunchTitle: "Starlink 7-10",
                          upcomingLaunchDate: "JAN-09",
                          upcomingLaunchTime: "09:06 PM",
                          upcomingLaunchBase: "SLC-4E, Vandenberg SFB",
                          upcomingLaunchLocation: "California, United States",
                          upcomingLaunchRocket: "Falcon 9",
                          upcomingLaunchDescription: "A SpaceX Falcon 9 rocket will launch the Starlink 7-10 mission on Wednesday, January 10, 2024 at 5:06 AM (UTC).",
                          upcomingLaunchCompany: "Space X",
                          url: URL(string: "https://www.rocketlaunch.live")!)
    ]
}
