//
//  ViewController.swift
//  SegmentedControl
//
//  Created by Ivan2 on 04.03.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func chooseSegmentedControl(_ sender: UISegmentedControl) {
        
        label.isHidden = false
        
        switch segmentedControl.selectedSegmentIndex {
        
        case 0:
            label.text = "The \(segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)!)"
            label.textColor = .red
       
        case 1:
            label.text = "The \(segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)!)"
            label.textColor = .blue
       
        case 2:
            label.text = "The \(segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)!)"
            label.textColor = .yellow
            
        default:
            print("Something went wrong")
        }
    }
    
    @IBAction func changeSliderValue(_ sender: UISlider) {
        label.text = String(sender.value)
    }
    
    @IBAction func finishNameEnteringButton(_ sender: UIButton) {
       
        guard nameTextField.text?.isEmpty == false else {return}
        
        if let _ = Double(nameTextField.text!) {
            print("Name format is wrong")
        }
        
        else {
            label.text = nameTextField.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.value = 1
        
        label.text = String(slider.value)
        label.font = label.font.withSize(35)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
        
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        
    }


}

