//
//  FirstViewController.swift
//  IteamDetails
//
//  Created by Eman on 25/09/2023.
//

import UIKit

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func goToDetails(_ sender: Any) {
        let detailsVC = IteamDetailsViewController()
        self.navigationController?.pushViewController(detailsVC, animated: true)
    }
    
}
