//
//  ThirdView.swift
//  Ex1
//
//  Created by 강인철 on 2021/04/08.
//

import Foundation
import UIKit
class ThirdView: UIViewController {
    override func viewDidLoad() {
        NSLog("ThirdVC viewDidLoad");

        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func popToRootView(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func popToPreView(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
