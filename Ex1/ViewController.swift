//
//  ViewController.swift
//  Ex1
//
//  Created by 강인철 on 2021/04/08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        NSLog("FirstVC viewDidLoad");
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func mvSecond(_ sender: Any) {
        NSLog("mvSecond call");
//        let storyboard: UIStoryboard? = UIStoryboard(name: "Main", bundle: Bundle.main)
        let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC")
                
        uvc?.modalPresentationStyle = UIModalPresentationStyle.fullScreen
//        uvc?.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(uvc!, animated: true)
        //test
    }
    
    @IBAction func pushToNext(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func mvSecondNavi(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else { return }
        self.navigationController?.pushViewController(uvc, animated: true)
    }
}

