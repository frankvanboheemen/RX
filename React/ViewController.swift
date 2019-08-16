//
//  ViewController.swift
//  React
//
//  Created by Frank van Boheemen on 16/08/2019.
//  Copyright © 2019 Frank van Boheemen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var clearDateBarButtonItem: UIBarButtonItem!
    
    @IBOutlet weak var beginDateHeaderLabel: UILabel!
    @IBOutlet weak var beginDateLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var endDateHeaderLabel: UILabel!
    @IBOutlet weak var endDateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLocalizedStrings()
        configureDatePicker()
    }
}

private extension ViewController {
    //MARK: - Configure view
    private func setLocalizedStrings() {
        title = NSLocalizedString("schedule_title", comment: "")
        clearDateBarButtonItem.title = NSLocalizedString("schedule_cleardatebarbutton", comment: "")
        
        beginDateHeaderLabel.text = NSLocalizedString("schedule_beginheader", comment: "")
        endDateHeaderLabel.text = NSLocalizedString("schedule_endheader", comment: "")
    }
    
    private func configureDatePicker() {
        //Sets minimum date to today
        datePicker.minimumDate = Date()
    }
}

