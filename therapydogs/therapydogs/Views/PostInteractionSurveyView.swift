//
//  PostInteractionSurveyView.swift
//  therapydogs
//
//  Created by Eric May on 10/14/23.
//

import SwiftUI

struct PostInteractionSurveyView: View {
    @State private var name = ""
    @State private var age = 0
    @State private var country = ""
    @State private var isStudent = false
    
    var body: some View {
        Form {
            Section(header: Text("Personal Information")) {
                TextField("Name", text: $name)
                Stepper(value: $age, in: 0...120, step: 1) {
                    Text("Age: \(age)")
                }
                Picker("Country", selection: $country) {
                    Text("USA").tag("USA")
                    Text("Canada").tag("Canada")
                    Text("UK").tag("UK")
                    Text("Other").tag("Other")
                }
            }
            
            Section(header: Text("Additional Information")) {
                Toggle("Are you a student?", isOn: $isStudent)
            }
            
            Section {
                Button(action: {
                    // Perform an action when the "Submit" button is tapped
                    // For example, you can print the values entered
                    print("Name: \(name)")
                    print("Age: \(age)")
                    print("Country: \(country)")
                    print("Student: \(isStudent ? "Yes" : "No")")
                }) {
                    Text("Submit")
                }
            }
        }
        
    }
}
