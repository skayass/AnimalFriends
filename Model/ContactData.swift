//
//  ContactData.swift
//  AnimalFriends
//
//  Created by test on 9/22/21.
//

import Foundation

var Data = [Contact(firstName: "Len", lastName: "Len  Leon", emailAdress: "Len09leon@gmail.com", phoneNumber: 3368754321, photo: "lionPhoto", ringTone: "lionRingtone"),Contact(firstName: "Elle", lastName: " Elle   Elephant", emailAdress: "Elle_elephant@gmail.com", phoneNumber:3368754623, photo: "elephantPhoto", ringTone: "elephantRingtone"),Contact(firstName: "Zera", lastName: "Zera   Zebra", emailAdress: "Zera_zebra07@gmail.com", phoneNumber: 3368754687, photo: "zebraPhoto", ringTone: "zebraRingtone"),Contact(firstName: "Ostry", lastName: "Ostry   Ostrich", emailAdress: "Ostry12ostrich@gmail.com", phoneNumber: 3368754897, photo: "ostrichPhoto", ringTone: "ostrichRingtone"),Contact(firstName: "Yoo", lastName: "Yoo   Yak", emailAdress: "Yoo08yak@gmail.com", phoneNumber: 3368754564, photo: "yakPhoto", ringTone: "yakRingtone"),Contact(firstName: "Leopard", lastName: "Leo  Leopard", emailAdress: "Leo_leopard@gmail.com", phoneNumber: 3368754324, photo: "leopardPhoto", ringTone: "leopardRingtone")]


struct ContactData {
    
    
   static func getFirstName() -> Contact {
        return Data[0]
        }                                                          
    
    static func getContacts() -> [String] {
        var first_name: [String] = []
        for Contact in Data {
            first_name.append(Contact.firstName);
        }
        return first_name
    }
    
    static func getInformation(firstName: String) -> Contact {
        var count: Int = 0
        var index: Int = 0
        for Contact in Data {
            
            if Contact.firstName == firstName {
                index = count
                break
            }
            count+=1
        }
        return Data[index]
    }
    
    
}
    
  

