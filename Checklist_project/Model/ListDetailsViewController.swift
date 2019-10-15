//
//  ListDetailsViewController.swift
//  Checklist1
//
//  Created by Zed on 10/12/19.
//  Copyright © 2019 123. All rights reserved.
//

import UIKit

class ListDetailsViewController: UIViewController {
    
    @IBOutlet weak var ListDetailsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelAction(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true, completion: nil)
    }
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
    }
}
