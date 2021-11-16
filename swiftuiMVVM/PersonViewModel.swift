//
//  PersonViewModel.swift
//  swiftuiMVVM
//
//  Created by Logan Koshenka on 10/23/21.
//

import SwiftUI

class PersonViewModel: ObservableObject {
    @Published var people: [Person] = []
    
    init() {
        addPeople()
    }
    
    func addPeople() {
        people = peopleData
    }
    
    func shuffleOrder() {
        people.shuffle()
    }
    
    func reverseOrder() {
        people.reverse()
    }
    
    func removeLastPerson() {
        people.removeLast()
    }
    
    func removeFirstPerson() {
        people.removeFirst()
    }
}

let peopleData = [
    Person(name: "Jon Snow", email: "jon@email.com", phoneNumber: "555-5555"),
    Person(name: "Robert Baratheon", email: "robert@email.com", phoneNumber: "555-5555"),
    Person(name: "Cersei Lannister", email: "cersei@email.com", phoneNumber: "555-5555"),
    Person(name: "Daenarys Targaryen", email: "daenarys@email.com", phoneNumber: "555-5555"),
    Person(name: "Samwell Tarly", email: "samwell@email.com", phoneNumber: "555-5555")
]
