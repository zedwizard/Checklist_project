//
//  FolderHeaderViewCell.swift
//  Checklist1
//
//  Created by Zed on 10/8/19.
//  Copyright © 2019 123. All rights reserved.
//

import UIKit

class FolderHeaderViewCell: UITableViewCell {

    @IBOutlet weak var folderNameLabel: UILabel!
    @IBOutlet weak var listsInFolderTableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
