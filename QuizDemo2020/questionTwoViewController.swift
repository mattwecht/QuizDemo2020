//
//  questionTwoViewController.swift
//  QuizDemo2020
//
//  Created by Matthew Wecht on 7/10/20.
//  Copyright © 2020 Matthew Wecht. All rights reserved.
//

import UIKit

class questionTwoViewController: UIViewController {

    @IBOutlet var testLabel: UILabel!
    var results = ["test1"]
    var newResult = "error"

    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = results[0]
    }
    
    @IBAction func chocolateTapped(_ sender: Any) {
        newResult = "Chocolate"
    }
    
    @IBAction func boringTapped(_ sender: Any) {
        newResult = "Wrong Response"
    }
    //segueToResults
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        results.append(newResult)
        let newVC = segue.destination as! resultsViewController
        newVC.results = results //sets the results array in the new VC equal to the current results array
        //newVC.results[0] = results[0]
        //newVC.results[1] = results[1]
    }

    
}
