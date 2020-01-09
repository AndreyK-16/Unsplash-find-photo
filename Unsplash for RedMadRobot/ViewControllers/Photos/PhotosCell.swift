//
//  PhotosCell.swift
//  Unsplash for RedMadRobot
//
//  Created by Андрей К on 27.12.2019.
//  Copyright © 2019 Андрей Кальдяев. All rights reserved.
//

import UIKit
import SDWebImage

//настройка ячеек в зоне видимости
class PhotosCell: UICollectionViewCell {
    
    static let reuseId = "PhotosCell"
    
//    выделение ячеек
    private let checkmark: UIImageView = {
        let image = UIImage(named: "bird1")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.alpha = 0
        return imageView
    }()
    
     let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    var unsplashPhoto: UnsplashPhoto! {
        didSet {
            let photoUrl = unsplashPhoto.urls["regular"]
            guard let imageUrl = photoUrl, let url = URL(string: imageUrl) else { return }
            photoImageView.sd_setImage(with: url, completed: nil)
            
            
        }
    }
    
    override var isSelected: Bool {
        didSet {
            updateSelectedState()
        }
    }
    
//    переиспользование ячеек отображения фото
    override func prepareForReuse() {
        super.prepareForReuse()
        photoImageView.image = nil
    }
    
    private func updateSelectedState() {
        photoImageView.alpha = isSelected ? 0.7 : 1
        checkmark.alpha = isSelected ? 1 : 0
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        updateSelectedState()
        setupPhotoImageView()
        setupCheckmarkView()
    }
    
//    добавление photoImageView на view и привязка к ячейке
    private func setupPhotoImageView() {
        addSubview(photoImageView)
        photoImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        photoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        photoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        photoImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        
    }
    
//    позиция checkmark на ячейке
    private func setupCheckmarkView() {
        addSubview(checkmark)
        checkmark.trailingAnchor.constraint(equalTo: photoImageView.trailingAnchor, constant: -8).isActive = true
        checkmark.bottomAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: -8).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
