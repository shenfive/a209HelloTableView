//
//  AViewController.swift
//  a209HelloTableView
//
//  Created by 申潤五 on 2022/10/1.
//

import UIKit

class AViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var addbook:[[String:String]] = []

    @IBOutlet weak var oneTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        oneTableView.delegate = self
        oneTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defult = UserDefaults.standard
        addbook = defult.value(forKey: "addressBook") as? Array<[String:String]> ?? []
    }
    
    
    //MARK:TableView Dalegate and Data Source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addbook.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "thereuseid") as! MyTableViewCell
        
        cell.name.text = addbook[indexPath.row]["name"]
        cell.phone.text =  addbook[indexPath.row]["phone"]
        
        return cell
    }


}
