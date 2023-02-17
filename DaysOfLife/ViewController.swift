//
//  ViewController.swift
//  DaysOfLife
//
//  Created by Артур Райман on 16.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    private var numberOfDays = ""
    
    @IBOutlet weak var resaltButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resaltButton.layer.cornerRadius = 12
    }


    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBAction func resaltButtonTapped() {
        infoLabel.text = "Ты прожил уже \(numberOfDays) дней"
    }
}

