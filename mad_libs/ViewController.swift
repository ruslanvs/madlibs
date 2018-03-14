//
//  ViewController.swift
//  mad_libs
//
//  Created by Ruslan Suvorov on 3/14/18.
//  Copyright © 2018 Ruslan Suvorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var madlib: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare( for segue: UIStoryboardSegue, sender: Any? ){
        if let destination = segue.destination as? BViewController {
            destination.delegate = self
        }
    }
    
    @IBAction func unwindtoViewController( segue: UIStoryboardSegue ){}
}

extension ViewController: BViewControllerDelegate {
    func displayMadlib( text: String ){
        madlib.text = text
    }
    
}
