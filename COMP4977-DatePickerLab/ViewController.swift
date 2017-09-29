//
//  ViewController.swift
//  COMP4977-DatePickerLab
//
//  Created by Daniel Capacio on 2017-09-29.
//  Copyright © 2017 Daniel Capacio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dateSelection: UIDatePicker!
    @IBOutlet weak var selectedDate: UILabel!
    @IBOutlet weak var difference: UILabel!
    
    @IBAction func datePickerAction(_ sender: Any) {
        let dateFormatter = DateFormatter();
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm";
        let strDate = dateFormatter.string(from: dateSelection.date);
        
        self.selectedDate.text = strDate;
        
        let today = Date();
        let selectedLabel  = dateSelection.date;
        let formatter = DateComponentsFormatter();
        formatter.allowedUnits = [.day, .hour, .minute];
        let calcDiff = formatter.string(from: today, to: selectedLabel)!
        
        self.difference.text = calcDiff;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
