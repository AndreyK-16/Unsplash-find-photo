//
//  PhotosCollectionsViewController.swift
//  Unsplash for RedMadRobot
//
//  Created by Андрей К on 26.12.2019.
//  Copyright © 2019 Андрей Кальдяев. All rights reserved.
//

import UIKit


class PhotosCollectionsViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        
        navigationBar()
    }
    
    
//    настройки NavigationBar
    private func navigationBar() {
        let titleLabel = UILabel()
        titleLabel.text = "Photos Collections"
        titleLabel.textColor = #colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 1)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: titleLabel)
    }
    
}


