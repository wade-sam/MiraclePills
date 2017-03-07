//
//  ViewController.swift
//  miraclePill
//
//  Created by Sam on 04/03/2017.
//  Copyright © 2017 Sam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var countyPicker: UIPickerView!
    @IBOutlet weak var CountyPickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryInput: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    
    
    
    let Counties = ["Suffolk", "Cambridgeshire", "Liverpool", "Northampton", "Essex", "Cardiff", "Loughborough"]
    override func viewDidLoad() {
        super.viewDidLoad()
        countyPicker.dataSource = self
        countyPicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buyNowBtnPressed(_ sender: Any) {

    }
    @IBAction func countyBtnPressed(_ sender: Any) {
        countyPicker.isHidden = false
        countryLabel.isHidden = true
        countryInput.isHidden = true
        buyNowBtn.isHidden = true
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Counties.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Counties[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //countyBtnPressed.setTitle(Counties[row], for: UIControlState.application)
        //countyPicker.isHidden = true
        CountyPickerBtn.setTitle(Counties[row], for: UIControlState.normal)
        countyPicker.isHidden = true
        countryLabel.isHidden = false
        countryInput.isHidden = false
        buyNowBtn.isHidden = false
    }
} 

