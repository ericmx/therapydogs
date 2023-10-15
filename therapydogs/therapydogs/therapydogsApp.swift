//
//  therapydogsApp.swift
//  therapydogs
//
//  Created by Eric May on 10/14/23.
//

import SwiftUI

@main
struct therapydogsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentViewTab()
        }
    }
}
struct ContentViewTab: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(1)
            
            Schedule()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("My Schedule")
                }
                .tag(3)
            
            UserProfile()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("My Profile")
                }
                .tag(2)
        }
    }
}

