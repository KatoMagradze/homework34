//
//  FirstPageViewController.swift
//  Homework34
//
//  Created by Kato on 6/4/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class SecondPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func skipTapped(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ThirdViewController")
        
        present(vc, animated: true, completion: nil)
    }
}
