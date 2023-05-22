//
//  Contact.swift
//  AnimalFriends
//
//  Created by test on 9/22/21.
//

import Foundation

struct Contact {
    
    let firstName : String
    let lastName : String
    let emailAdress: String
    let phoneNumber: Int
    let photo : String
    let ringTone : String
    
    init (firstName: String, lastName : String, emailAdress: String, phoneNumber: Int,
          photo : String, ringTone : String) {
        self.firstName = firstName
        self.lastName = lastName
        self.emailAdress = emailAdress
        self.phoneNumber = phoneNumber
        self.photo = photo
        self.ringTone = ringTone
    }
    
}
