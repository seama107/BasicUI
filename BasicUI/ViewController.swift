//
//  ViewController.swift
//  BasicUI
//
//  Created by Seaman, Michael on 3/21/16.
//  Copyright © 2016 Seaman, Michael. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    //MARK: Properties
    
    @IBOutlet weak var nameTextFeild: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    @IBOutlet weak var ExtraBoxFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextFeild.delegate = self;
        ExtraBoxFeild.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFeildDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    
    
    
    

    //MARK: Actions
    
    @IBAction func setDefaultLabelText(sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
        
    }
    

}

