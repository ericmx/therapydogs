//
//  DogDetailView.swift
//  therapydogs
//
//  Created by Eric May on 10/14/23.
//

import SwiftUI

struct DogDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var showScheduledText = false
    @State private var isButtonVisible = true
    
    @State private var selectedDate = Date()
    let currentDate = Date()
    
    let dog: TherapyDog
    
    var body: some View {
        ScrollView {
            VStack {
                Text(dog.dogName)
                    .font(.custom("Chalkboard SE", size: 60))
                Image(uiImage: dog.dogImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.black)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .cornerRadius(20.0)
                    .padding()
                Text(dog.dogDescription)
                    .font(.headline)
                    .padding()
                DatePicker("Select Date and Time", selection: $selectedDate, in: currentDate..., displayedComponents: [.date, .hourAndMinute])
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
                if isButtonVisible {
                    Button(action: {
                        showScheduledText.toggle()
                        isButtonVisible = false
                    }) {
                        Text("Schedule Now")
                            .font(.title)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                }
                
                if showScheduledText {
                    Text("Your event is scheduled!")
                        .font(.title)
                        .padding()
                    Button(action: {
                        dismiss()
                    }) {
                        Text("Dismiss")
                            .font(.title)
                            .padding()
                            .foregroundColor(Color(red: 47/255, green: 79/255, blue: 79/255))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 47/255, green: 79/255, blue: 79/255), lineWidth: 3)
                            )
                    }
                    .padding()
                    
                }
            }
        }
    }
}
