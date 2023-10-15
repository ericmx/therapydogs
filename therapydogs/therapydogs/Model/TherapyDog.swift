//
//  TherapyDogs.swift
//  therapydogs
//
//  Created by Eric May on 10/14/23.
//

import SwiftUI

struct TherapyDog: Identifiable, Hashable {
    let id = UUID()
    var dogName: String
    var dogDescription: String
    var dogDescriptionShort: String
    var dogImage: UIImage
}
