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
            
            PostInteractionSurveyView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("My Profile")
                }
                .tag(2)
            
            MySchedule()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("My Schedule")
                }
                .tag(3)
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("Welcome to the Home Tab!")
            .font(.largeTitle)
    }
}

struct ProfileView: View {
    var body: some View {
        Text("This is the Profile Tab")
            .font(.largeTitle)
    }
}

struct MySchedule: View {
    var body: some View {
        Text("Additional content in the More Tab")
            .font(.largeTitle)
    }
}
