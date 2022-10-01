//
//  AViewController.swift
//  a209HelloTableView
//
//  Created by 申潤五 on 2022/10/1.
//

import UIKit

class AViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var oneTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        oneTableView.delegate = self
        oneTableView.dataSource = self
    }
    
    //MARK:TableView Dalegate and Data Source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "thereuseid") as! MyTableViewCell
        
        cell.name.text = "hahaha"
        
        cell.phone.text = "call me baby"
        
        return cell
    }


}
