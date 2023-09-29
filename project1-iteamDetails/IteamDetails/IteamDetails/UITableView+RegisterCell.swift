//
//  UITableView+RegisterCell.swift
//  IteamDetails
//
//  Created by Eman on 29/09/2023.
//


import Foundation
import UIKit
extension UITableView {
    func registerCellNib<Cell: UITableViewCell>(cellClass: Cell.Type) {
self.register(UINib(nibName: String(describing: Cell.self), bundle: nil), forCellReuseIdentifier: String(describing: Cell.self))
    }

    func dequeue<Cell: UITableViewCell>() -> Cell {
        let identifier = String(describing: Cell.self)
        guard let cell = self.dequeueReusableCell(withIdentifier: identifier) as? Cell else {
            fatalError("Error in cell")
        }
        cell.selectionStyle = .none
        return cell
    }
}
