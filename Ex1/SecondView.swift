//
//  SecondView.swift
//  Ex1
//
//  Created by 강인철 on 2021/04/08.
//

import Foundation
import UIKit

class SecondView : UIViewController{
    override func viewDidLoad() {
        NSLog("SecondVC viewDidLoad");

        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func mvFirst(_ sender: Any) {
        NSLog("mvFirst call");

//        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "FirstVC") else { return }
//        self.navigationController?.pushViewController(uvc, animated: true)
        self.presentingViewController?.dismiss(animated: true)
    }
    @IBAction func PushToNextView(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") else {
            return
        }
//        vc?.modalPresentationStyle = UIModalPresentationStyle.fullScreen
//        self.present(vc!, animated: true, completion: nil)
//        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    //    @IBAction func mvFirstNavi(_ sender: Any) {
//    }
    @IBAction func PopPreView(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
