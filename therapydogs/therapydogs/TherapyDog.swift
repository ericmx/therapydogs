//
//  TherapyDogs.swift
//  therapydogs
//
//  Created by Eric May on 10/14/23.
//

import Foundation
import SwiftUI

struct TherapyDog: Identifiable {
    let id = UUID()
    var dogName: String
    var dogDescription: String
    var dogDescriptionShort: String
    var dogImage: UIImage
    
}
