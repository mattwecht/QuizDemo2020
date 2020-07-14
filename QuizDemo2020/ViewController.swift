//
//  ViewController.swift
//  QuizDemo2020
//
//  Created by Matthew Wecht on 7/10/20.
//  Copyright © 2020 Matthew Wecht. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var chosenValue = "test" //sets up an empty var
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    @IBAction func catsTapped(_ sender: Any) {
        chosenValue = "cat"
        
    }
    
    @IBAction func dogsTapped(_ sender: Any) {
        chosenValue = "dog"
    }
    @IBAction func nextTapped(_ sender: Any) {
        performSegue(withIdentifier: "questionOneSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVC = segue.destination as! questionTwoViewController
        newVC.results[0] = self.chosenValue
    }
    
}

