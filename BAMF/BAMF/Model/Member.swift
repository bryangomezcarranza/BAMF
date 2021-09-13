//
//  Member.swift
//  BAMF
//
//  Created by Bryan Gomez on 9/13/21.
//

import Foundation

class Member {
    var name: String
    var stateFrom: String
    var bio: String
    var funFact: String
    
    init(name: String, stateFrom: String, bio: String, funFact: String) {
        self.name = name
        self.stateFrom = stateFrom
        self.bio = bio
        self.funFact = funFact
    }
}
