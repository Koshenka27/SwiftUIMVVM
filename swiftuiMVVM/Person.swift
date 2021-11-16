//
//  Person.swift
//  swiftuiMVVM
//
//  Created by Logan Koshenka on 10/23/21.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var email: String
    var phoneNumber: String
}
