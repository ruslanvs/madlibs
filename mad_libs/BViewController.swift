//
//  BViewController.swift
//  mad_libs
//
//  Created by Ruslan Suvorov on 3/14/18.
//  Copyright © 2018 Ruslan Suvorov. All rights reserved.
//

import UIKit

class BViewController: UIViewController {
    
    weak var delegate: BViewControllerDelegate?
    
    @IBOutlet var inputField: [UITextField]!
    var inputs = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let d = delegate{
            print( d )
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        for i in 0..<inputField.count {
            if let input = inputField[i].text {
                inputs.append(input)
            }
        }
        let madlib = "We are having a perfectly \(inputs[0]) time now. Later we will \(inputs[1]) and \(inputs[2]) in the \(inputs[3])."
        delegate?.displayMadlib(text: madlib)
        performSegue(withIdentifier: "unwindSegueToViewController", sender: self)
    }
}


