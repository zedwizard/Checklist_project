//
//  FolderViewController.swift
//  Checklist1
//
//  Created by Zed on 9/26/19.
//  Copyright © 2019 123. All rights reserved.
//

import UIKit
import Parse

class FolderViewController: UIViewController, UITableViewDataSource {
    
    
    
   
    @IBOutlet weak var folderTableView: UITableView!
    
    private var objects = [PFObject]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        folderTableView.dataSource = self
        loadLists()
//        if let folderHeaderViewCell: FolderHeaderViewCell = .fromNib() {
//            view.addSubview(folderHeaderViewCell)
//        }
    }
    
    
    func loadLists() {
        let query = PFQuery(className:"List")
        query.findObjectsInBackground { [weak self] (objects, error) in
            if let lists = objects {
                self?.objects = lists
//                self?.tableView.reloadData()
            } else {
                print(error?.localizedDescription ?? "error")
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(objects.count)
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        indexPath.section
//        indexPath.row
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "folderCell", for: indexPath) as? FolderHeaderViewCell else { return UITableViewCell()}
        
        return cell
    }
}




//extension FolderViewController: UITableViewDataSource, UITableViewDelegate {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return objects.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "folderViewCell", for: indexPath)
//        cell.textLabel?.text = objects[indexPath.row].object(forKey: "folderName") as? String
//        return cell
//    }
//}


