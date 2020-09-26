//
//  SettingViewController.swift
//  HW3
//
//  Created by Mike on 9/26/20.
//

import UIKit
protocol SettingViewControllerDelegate {
    func indicateSelection(Unit: String)
}

protocol SettingsViewControllerDelegate {
    func SettingChanged(fromUnits: LengthUnit, toUnits: LengthUnit)
    func settingsChanged(fromUnits: VolumeUnit, toUnits: VolumeUnit)
}

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func backTapped(_ sneder: Any){
        performSegue(withIdentifier: "unwinde", sender: self)
    }

    @IBOutlet weak var Picker: UIPickerView!
}
