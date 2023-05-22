//
//  ViewController.swift
//  AnimalFriends
//
//  Created by Administrator on 9/17/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var fullName: UILabel!
    @IBOutlet var contactPicker: UIPickerView!
    @IBOutlet weak var contactImage: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    var audio:AVPlayer!
    
    // TODO: here the pickerData is set to a string array, however you will want it to be an array
    // of your structures, for example, if my structure for my contacts is named Contact I would need an array of Contacts
    // so I would set pickerData to an array  [Contact]();
    // Remember you must first create your structure and data classes
   // var pickerData = [String]();
    //example
   // var pickerData = [Contact]();
    var pickerData = ContactData.getContacts()
    var currentContact = ContactData.getFirstName();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateLabels()
        // picker properites - leave these lines in
        self.contactPicker.delegate = self
        self.contactPicker.dataSource = self
            
    }
    
    @IBAction func ringtoneButton(_ sender: UIButton) {
        playRingtone(sender)
    }
    
    
    func updateLabels() {
        
        if currentContact.photo == "lionPhoto" {
            contactImage.image = UIImage(named: "lion-1")
        } else if currentContact.photo == "elephantPhoto" {
            contactImage.image = UIImage(named: "elephant-1")
        } else if currentContact.photo == "yakPhoto" {
            contactImage.image = UIImage(named: "yak-1")
        } else if currentContact.photo == "leopardPhoto" {
            contactImage.image = UIImage(named: "leopard-1")
        } else if currentContact.photo == "zebraPhoto" {
            contactImage.image = UIImage(named: "zebra-1")
        } else if currentContact.photo == "ostrichPhoto" {
            contactImage.image = UIImage(named: "ostrich-1")
        }
        
        
        fullName.text = currentContact.lastName
        emailLabel.text = currentContact.emailAdress
        phoneNumberLabel.text = String(currentContact.phoneNumber)
        
    }

        
    func playRingtone(_ sender: UIButton) {
        
        // need to declare local path as url
        if currentContact.ringTone == "lionRingtone" {
            let url = Bundle.main.url(forResource: "lion", withExtension: "mp3")
            audio = AVPlayer.init(url: url!)
        } else if currentContact.ringTone == "elephantRingtone" {
            let url = Bundle.main.url(forResource: "elephant", withExtension: "mp3")
            audio = AVPlayer.init(url: url!)
        } else if currentContact.ringTone == "leopardRingtone" {
            let url = Bundle.main.url(forResource: "leopard", withExtension: "mp3")
            audio = AVPlayer.init(url: url!)
        } else if currentContact.ringTone == "ostrichRingtone" {
            let url = Bundle.main.url(forResource: "ostrich", withExtension: "mp3")
            audio = AVPlayer.init(url: url!)
        } else if currentContact.ringTone == "yakRingtone" {
            let url = Bundle.main.url(forResource: "yak", withExtension: "mp3")
            audio = AVPlayer.init(url: url!)
        } else if currentContact.ringTone == "zebraRingtone" {
            let url = Bundle.main.url(forResource: "zebra", withExtension: "mp3")
            audio = AVPlayer.init(url: url!)
        }
        
        // after initialization play audio its just like click on play button
        // now use declared path 'url' to initialize the player
        //audio = AVPlayer.init(url: url!)
            audio.play()
    }
    
     
    /* Picker functions */
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
     
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // if you are using a structure, you will have to return the property here
        // example
        // return pickerData[row].firstName
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("CCC")
        let selectedFirstName = pickerData[contactPicker.selectedRow(inComponent: component)]
        print(selectedFirstName)
        //currentContact  = pickerData[row]
        currentContact = ContactData.getInformation(firstName: selectedFirstName)
        updateLabels()
    }
    /* End Picker functions */
}

