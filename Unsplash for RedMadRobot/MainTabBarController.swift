//
//  MainTabBarController.swift
//  Unsplash for RedMadRobot
//
//  Created by Андрей К on 25.12.2019.
//  Copyright © 2019 Андрей Кальдяев. All rights reserved.
//

import UIKit

//содержит TabBar с закладками SearchPhotos, CollectionsPhotos, FavouritesPhotos
class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        let collectionsVC = PhotosCollectionsViewController(collectionViewLayout: UICollectionViewLayout())
        
        let likesVC = LikesCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        viewControllers = [
            generateNavigationController(rootViewController: photosVC, title: "Photos", image: #imageLiteral(resourceName: "photos")),
            generateNavigationController(rootViewController: collectionsVC, title: "Collections", image: #imageLiteral(resourceName: "collections")),
            generateNavigationController(rootViewController: likesVC, title: "Favourites", image: #imageLiteral(resourceName: "heart"))
        ]
    }
    
    //    иконки и название контроллеров
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
