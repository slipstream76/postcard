//
//  ViewController.swift
//  Postcard
//
//  Created by Christopher L Weaver on 5/23/15.
//  Copyright (c) 2015 DadzApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPress(sender: UIButton) {
        // Code will evaluate and perform the following actions when the 'Send Mail' button is pressed
        messageLabel.hidden = false
        nameLabel.hidden = false
        
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.blueColor()
        
        // Added name label..Challenge 1
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
        // "resignFirstResponder" causes some strange crash behavior depending on the status of the emulator keyboard
        // enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    
    
}

