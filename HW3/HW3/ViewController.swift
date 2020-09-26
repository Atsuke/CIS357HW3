//
//  ViewController.swift
//  HW3
//
//  Created by Mike on 9/24/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var toOutlet: UILabel!
    @IBOutlet weak var toField: DecimalMinusTextField!
    @IBOutlet weak var fromOutlet: UILabel!
    
    @IBOutlet weak var fromField: DecimalMinusTextField!
    
    @IBOutlet weak var ModeText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.toField.delegate = self
        self.fromField.delegate = self
    }
    
    @IBAction func calulateButtonPressed(_ sender: UIButton) {
       
    }
    
    @IBOutlet weak var toPlace: UILabel!
    @IBOutlet weak var fromPlace: UILabel!
    
    
    @IBAction func clearButton(_ sender: UIButton) {
        toField.text?.removeAll()
        fromField.text?.removeAll()
        
    }
    
    

    
    @IBAction func dissmissKeyboard(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    @IBAction func unwind( _ seg: UIStoryboardSegue){
        
    }
    
    }
    

extension ViewController : UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == self.fromField{
            toField.text?.removeAll()
        }else if textField == self.toField{
            fromField.text?.removeAll()
        }
    }
    
}
