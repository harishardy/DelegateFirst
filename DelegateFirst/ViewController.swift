//
//  ViewController.swift
//  DelegateFirst
//
//  Created by Harish Hardy on 05/05/19.
//  Copyright © 2019 Greens. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var firstTextField: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
    {
        print("textFieldShouldBeginEditing")
        return true
    }
    
    
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
    {
       print("textFieldShouldEndEditing")
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool // return NO to not change text
    {
        
        print("shouldChangeCharactersIn range")
        return true
    }
    
    
    
    
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool // called when clear button pressed. return NO to ignore (no notifications)
    {
        print("textFieldShouldClear")
        return true
    }
    
    
    @IBAction func cancelButton(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        
        textField.resignFirstResponder()
        
        print("textFieldShouldReturn")
        
        return true
    }
    


}

