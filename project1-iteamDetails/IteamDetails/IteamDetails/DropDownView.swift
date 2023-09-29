//
//  DropDownView.swift
//  IteamDetails
//
//  Created by Eman on 29/09/2023.
//

import UIKit

class DropDownView: UIView, UITableViewDelegate,UITableViewDataSource  {
    
 @IBOutlet weak var additionTableView: UITableView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        additionTableView.dataSource = self
        additionTableView.delegate = self
        additionTableView.registerCellNib(cellClass: AdditionTableViewCell.self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: AdditionTableViewCell = additionTableView.dequeue()
        return cell
    }
    

   

}
