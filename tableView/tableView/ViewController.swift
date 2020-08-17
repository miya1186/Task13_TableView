//
//  ViewController.swift
//  tableView
//
//  Created by miyazawaryohei on 2020/08/17.
//  Copyright © 2020 miya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
 
    @IBOutlet var tableView: UITableView!
    var fruits :[Dictionary<String, Any>] = []
    let KeyName = "Name"
    let KeyCheck = "Check"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        fruits = [[KeyName:"りんご",KeyCheck:false,],
                 [KeyName:"みかん",KeyCheck:true,],
                 [KeyName:"バナナ",KeyCheck:false,],
                 [KeyName:"パイナップル",KeyCheck:true,]
                ]

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.fruits.count
     }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        
        let fruit = self.fruits[indexPath.row]
        cell.cellImage.image = nil
        
        
        if fruit[KeyCheck] as? Bool == true {
            cell.cellImage.image = UIImage(named: "checkmark")
        }
        cell.label.text = (fruit[KeyName] as? String) ?? ""
        
        return cell
     }

    
    
    
}

