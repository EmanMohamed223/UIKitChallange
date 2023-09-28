//
//  IteamDetailsViewController.swift
//  IteamDetails
//
//  Created by Eman on 25/09/2023.
//

import UIKit

class IteamDetailsViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: IngredCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "IngredCollectionViewCell", for: indexPath) as! IngredCollectionViewCell
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 70, height: ingrediansCollection.heightAnchor-10)
////    }
    
    @IBOutlet weak var ingrediansCollection: UICollectionView!
    
    @IBOutlet weak var deletButton: UIButton!
    @IBOutlet weak var circlerViewForHeartButon: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        circlerViewForHeartButon.makeCircularView()
        deletButton.makeCircularView()
        ingrediansCollection.dataSource = self
        ingrediansCollection.delegate = self
        ingrediansCollection.register(IngredCollectionViewCell.self, forCellWithReuseIdentifier: "IngredCollectionViewCell")
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//            layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
//            layout.itemSize = CGSize(width: 70, height: 55)
//            layout.minimumInteritemSpacing = 40
//            layout.minimumLineSpacing = 31
//        ingrediansCollection!.collectionViewLayout = layout
    }
    func configureNavigationBar() {
        let backButton = UIBarButtonItem()
        backButton.title = ""
        backButton.tintColor = .white
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        backButton.width = 27.08
       // backButton.height = 17.42
    }
}
