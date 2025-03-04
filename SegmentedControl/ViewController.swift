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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        label.font = label.font.withSize(35)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
        
    }


}

