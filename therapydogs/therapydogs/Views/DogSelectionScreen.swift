//
//  DogSelectionScreen.swift
//  therapydogs
//
//  Created by Eric May on 10/14/23.
//

import SwiftUI

struct DogSelectionScreen: View {
    let gridItems = [
        GridItem(.flexible(minimum: 160, maximum: 400), spacing: 10),
        GridItem(.flexible(minimum: 160, maximum: 400), spacing: 10),
        GridItem(.flexible(minimum: 160, maximum: 400), spacing: 10)
    ]
    var dogs: [TherapyDog] = [
        TherapyDog(dogName: "Brienne", dogDescription: "Brienne is a Yellow Labrador Retriever named after Brienne of Tarth, a Game of Thrones character. Brienne was born January 21, 2017. Her best friend is her fur brother, Henry, and her favorite treat is pineapple. Brienne’s handler is Beth.", dogImage: UIImage(imageLiteralResourceName: "Brienne.png")),
        TherapyDog(dogName: "Ellie", dogDescription: "Ellie is a Border Collie mixed breed. She was born on February 19, 2015. Ellie was adopted at 8 weeks old from Sierra’s Haven for New and Used Pets in Portsmouth, OH. She was one of 14 puppies in her litter. She will retrieve her Kong or catch a Frisbee all day long. She loves running along the beach and chasing birds. At the end of the day, her favorite thing to do is be next to her humans. Ellie’s handler is Judy.", dogImage: UIImage(imageLiteralResourceName: "Ellie.png")),
        TherapyDog(dogName: "Hudson", dogDescription: "Hudson Hetzel-Hausmann is a Golden Retriever. He was born on November 9, 2018. Hudson’s favorite activity is fetch, he can retrieve his ball all day long! He would do anything for a puppuccino from Starbucks. Whether it’s flying to Miami Beach to dig in the sand or burying himself in piles of Ohio snow, Hudson is always down for an adventure! Hudson’s handlers are Gabby and Jake.", dogImage: UIImage(imageLiteralResourceName: "Hudson.png")),
        TherapyDog(dogName: "Radar", dogDescription: "Radar is a Labrador Retriever. He was born on July 23, 2014. Radar’s hobbies include camping, taking long walks and spending time with his family. Radar’s favorite toys are deer antlers and his best friend is Mattis K9 from the Franklin County Sheriff’s Office. Radar’s handler is ReNea.", dogImage: UIImage(imageLiteralResourceName: "Radar.png")),
        TherapyDog(dogName: "Rocky", dogDescription: "Rocky is a Boxer. Rocky had a difficult upbringing in an abusive home. He was rescued by Canine Castaways in Indiana and was adopted by his handler, Jeannette, on March 13, 2019. Rocky loves his squeaky balls, running with his mom and snuggling with his sister, Raven. Rocky’s handler is Jeannette", dogImage: UIImage(imageLiteralResourceName: "Rocky.png")),
        TherapyDog(dogName: "Shiloh", dogDescription: "Shiloh is an English Cream Golden Retriever. He was born September 3, 2017. Shiloh’s best friends are his fur brother, Grady, and cat, Izzy. Although he isn’t sure Izzy likes him. Shiloh’s favorite toy is his Billie bear and his special talent is that he can do an Elvis impersonation! Shiloh’s handler is Mary.", dogImage: UIImage(imageLiteralResourceName: "Shiloh.png")),
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItems, spacing: 10) {
                ForEach(dogs) { dog in
                    VStack {
                        Text(dog.dogName)
                            .font(.title)
                        Image(uiImage: dog.dogImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }

                    
                }
            }
            .padding()
        }
    }
}
