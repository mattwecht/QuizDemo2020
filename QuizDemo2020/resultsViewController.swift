//
//  resultsViewController.swift
//  QuizDemo2020
//
//  Created by Matthew Wecht on 7/10/20.
//  Copyright © 2020 Matthew Wecht. All rights reserved.
//

import UIKit

class resultsViewController: UIViewController {

    var results = ["test1", "test2"]

    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = results[0]
        label2.text = results[1]
        // Do any additional setup after loading the view.
    }
    


}
