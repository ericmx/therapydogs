//
//  PostInteractionSurveyView.swift
//  therapydogs
//
//  Created by Eric May on 10/14/23.
//

import SwiftUI

struct UserProfile: View {
    @State private var name = "Eric May"
    @State private var age = 64
    
    @State private var country = ""
    
    var body: some View {
        Form {
            Section(header: Text("Personal Information")) {
                Text("Name: Eric May")
                Text("Age: 34")
                Text("Phone: 614-787-1234")
                Text("Email: buyourproduct@gmail.com")
                Text("Address: \n123 Awesome Street\nColumbus, OH 43210")
            }
            
            Section(header: Text("Hospital Information")) {
                Text("The James Cancer Hospital")
                Text("460 W. 10th Ave Columbus, OH 43210")
                Text("Room 2218")
                Text("Phone: 800-293-5066")
            }
        }
        
    }
}
