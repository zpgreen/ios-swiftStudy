//
//  ViewController.swift
//  Ex1
//
//  Created by 강인철 on 2021/04/08.
//

import UIKit

class ViewController: UIViewController,MyProtocol{

    @IBOutlet weak var lbName: UILabel!
    override func viewDidLoad() {
        NSLog("FirstVC viewDidLoad");
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func FourAction(_ sender: Any) {
        guard let uvc = storyboard?.instantiateViewController(withIdentifier: "FourVC") as? FourView else {
            return
        }
        uvc.delegate = self
        self.navigationController?.pushViewController(uvc, animated: true)
    }

        func protocolData(dataSent: String) {
            lbName.text = dataSent
        }
  
    
    
    
    @IBAction func mvSecond(_ sender: Any) {
        NSLog("mvSecond call");
//        let storyboard: UIStoryboard? = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondView{
            
            uvc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
//        uvc?.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            uvc.paramText = "기본 텍스트"
            self.present(uvc, animated: true)
        }
                
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

