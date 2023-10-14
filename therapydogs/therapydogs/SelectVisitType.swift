//
//  SelectVisitType.swift
//  therapydogs
//
//  Created by Eric May on 10/14/23.
//

import SwiftUI

struct SelectVisitType: View {
    var body: some View {
        HStack {
            NavigationLink("In-Person Visit", destination: InPersonVisit())
                .foregroundColor(.white)
                .padding()
                .padding()
                .font(.largeTitle)
                .background(.red)
                .cornerRadius(20.0)
            NavigationLink("Virtual Visit", destination: VirtualVisit())
                .foregroundColor(.white)
                .padding()
                .padding()
                .font(.largeTitle)
                .background(.red)
                .cornerRadius(20.0)
        }
    }
}

