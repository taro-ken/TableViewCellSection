//
//  TableViewCell.swift
//  tableViewCell
//
//  Created by 木元健太郎 on 2021/01/10.
//

import UIKit



    class TableViewCell: UITableViewCell {
      
     
      @IBOutlet weak var nameLabel: UILabel!
     
      override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel?.text = nil
      }

      func configure(twoDimArray: TableViewModel) {
        nameLabel?.text = twoDimArray.name
      }
        
        
}

