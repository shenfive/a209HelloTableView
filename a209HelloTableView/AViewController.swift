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
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5000
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "thereuseid")!
        
        if indexPath.section == 1{
            cell.backgroundColor = UIColor.red
        }else{
            cell.backgroundColor = UIColor.green
        }
        
        cell.textLabel?.text = "Hello \(indexPath.row) \(indexPath.section) "
        return cell
    }


}
