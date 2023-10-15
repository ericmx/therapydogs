//
//  ScheduleView.swift
//  therapydogs
//
//  Created by Eric May on 10/14/23.
//

import SwiftUI

struct Schedule: View {
    @State private var isModalPresented = false
    
    var dogs: [TherapyDog] = [
        TherapyDog(dogName: "Brienne", dogDescription: "Brienne is a Yellow Labrador Retriever named after Brienne of Tarth, a Game of Thrones character. Brienne was born January 21, 2017. Her best friend is her fur brother, Henry, and her favorite treat is pineapple. Brienne’s handler is Beth.", dogDescriptionShort: "Brienne is a Yellow Labrador Retriever named after Brienne of Tarth, a Game of Thrones character.",dogImage: UIImage(imageLiteralResourceName: "Brienne.png")),
        TherapyDog(dogName: "Ellie", dogDescription: "Ellie is a Border Collie mixed breed. She was born on February 19, 2015. Ellie was adopted at 8 weeks old from Sierra’s Haven for New and Used Pets in Portsmouth, OH. She was one of 14 puppies in her litter. She will retrieve her Kong or catch a Frisbee all day long. She loves running along the beach and chasing birds. At the end of the day, her favorite thing to do is be next to her humans. Ellie’s handler is Judy.", dogDescriptionShort: "Ellie is a Border Collie mixed breed. She was born on February 19, 2015.", dogImage: UIImage(imageLiteralResourceName: "Ellie.png")),
        TherapyDog(dogName: "Hudson", dogDescription: "Hudson Hetzel-Hausmann is a Golden Retriever. He was born on November 9, 2018. Hudson’s favorite activity is fetch, he can retrieve his ball all day long! He would do anything for a puppuccino from Starbucks. Whether it’s flying to Miami Beach to dig in the sand or burying himself in piles of Ohio snow, Hudson is always down for an adventure! Hudson’s handlers are Gabby and Jake.", dogDescriptionShort: "Hudson Hetzel-Hausmann is a Golden Retriever. He was born on November 9, 2018.", dogImage: UIImage(imageLiteralResourceName: "Hudson.png"))
    ]
    
    var body: some View {
        List(dogs) { dog in
            HStack {
                Image(uiImage: dog.dogImage)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .cornerRadius(10)
                VStack(alignment: .leading) {
                    Text(dog.dogName)
                        .font(.headline)
                    Text("Visit Completed")
                    Button(action: {
                        isModalPresented = true
                    }) {
                        Text("Give us feedback")
                    }
                    .sheet(isPresented: $isModalPresented) {
                        ModalView(comments: "cat")
                    }
                }
            }
        }
    }
}

struct ModalView: View {
    @Environment(\.dismiss) var dismiss
    @State var rating1 = 3
    @State var rating2 = 3
    @State var comments: String
    
    var body: some View {
        VStack {
            Text("How was your visit with Brienne?")
                .font(.title)
                .padding()
            Form {
                Section(header: Text("Experience Rating")) {
                    Stepper(value: $rating1, in: 1...5) {
                        Text("Rating: \(rating1)")
                    }
                }
                
                Section(header: Text("Another Category Rating")) {
                    Stepper(value: $rating2, in: 1...5) {
                        Text("Rating: \(rating2)")
                    }
                }
                
                Section(header: Text("Comments")) {
                    TextEditor(text: $comments)
                        .frame(minHeight: 100)
                }
                Section {
                    Button(action: {
                        dismiss()
                    }) {
                        Text("Submit feedback")
                            .font(.title)
                            .padding()
                            .foregroundColor(Color(red: 47/255, green: 79/255, blue: 79/255))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 47/255, green: 79/255, blue: 79/255), lineWidth: 3)
                            )
                    }
                }
            }
        }
    }
}

