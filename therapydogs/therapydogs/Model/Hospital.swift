//
//  Hospital.swift
//  therapydogs
//
//  Created by Eric May on 10/14/23.
//

import Foundation

struct Hospital: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var city: String?
    var state: String?
}
