//
//  ViewController.swift
//  SegmentedControl
//
//  Created by  Mr.Ki on 14.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.isHidden = true
        label.font = label.font.withSize(35)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
        
        
    }


    @IBAction func choiseSegment(_ sender: UISegmentedControl) {
        label.isHidden = false
        switch segmentedControl.selectedSegmentIndex {
        case 0 :
            label.text = "First segment"
        case 1 :
            label.text = "Second segment"
     
        default:
            label.text = "Third segment"
        }
        
    }
}

