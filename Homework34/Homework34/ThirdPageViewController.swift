//
//  ThirdPageViewController.swift
//  Homework34
//
//  Created by Kato on 6/4/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class ThirdPageViewController: UIViewController {

    @IBOutlet weak var getStartedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let purpleColor = hexStringToUIColor(hex: "#1D2488")
        getStartedButton.layer.borderWidth = 1
        getStartedButton.layer.borderColor = purpleColor.cgColor
        getStartedButton.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
    }

}

func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return UIColor.gray
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

