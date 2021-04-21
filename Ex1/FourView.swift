//
//  FourView.swift
//  Ex1
//
//  Created by 강인철 on 2021/04/21.
//

import UIKit
protocol MyProtocol {
    func protocolData(dataSent: String)
}
class FourView: UIViewController {
    
    @IBOutlet weak var lbText: UILabel!
    var delegate: MyProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.delegate?.protocolData(dataSent: self.lbText.text ?? "")
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
