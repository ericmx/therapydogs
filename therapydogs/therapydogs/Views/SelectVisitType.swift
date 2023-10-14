//
//  SelectVisitType.swift
//  therapydogs
//
//  Created by Eric May on 10/14/23.
//

import SwiftUI

struct SelectVisitType: View {
    var body: some View {
        VStack {
            Text("What kind of visit would you like to schedule?")
                .font(.system(size: 70))
                .padding(.bottom)
            HStack {
                NavigationLink("In-Person Visit", destination: DogSelectionScreen())
                    .foregroundColor(.white)
                    .padding()
                    .padding()
                    .font(.largeTitle)
                    .background(.red)
                    .cornerRadius(20.0)
                NavigationLink("Virtual Visit", destination: DogSelectionScreen())
                    .foregroundColor(.white)
                    .padding()
                    .padding()
                    .font(.largeTitle)
                    .background(.red)
                    .cornerRadius(20.0)
            }
        }
    }
}

