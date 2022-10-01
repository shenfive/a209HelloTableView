//
//  ViewController.swift
//  a209HelloTableView
//
//  Created by 申潤五 on 2022/10/1.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phone: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addNewName(_ sender: Any) {
        var theName = name.text ?? ""
        var thePhone = phone.text ?? ""
        
        if theName.count < 2{
            //提示使用者姓名大於兩個字元
            var alert = UIAlertController(title: nil, message: "提示使用者姓名大於兩個字元", preferredStyle: UIAlertController.Style.alert)
            var action = UIAlertAction(title: "我知道了", style: UIAlertAction.Style.default)
            alert.addAction(action)
            self.present(alert, animated: true)
            return
        }
        
    }
    
}

