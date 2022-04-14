//
//  GalleryCollectionView.swift
//  MovieApp
//
//  Created by Никита on 14.04.2022.
//

import UIKit

class GalleryCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    
    var cells = [SushiModel]()
    
    
    init() {
        //        let layout = UICollectionViewFlowLayout()
        //        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: ZoomAndSnapFlowLayout())
        
        backgroundColor = #colorLiteral(red: 0.9589126706, green: 0.9690223336, blue: 0.9815708995, alpha: 1)
        delegate = self
        dataSource = self
        self.contentInsetAdjustmentBehavior = .always
        register(GalleryCollectionViewCell.self, forCellWithReuseIdentifier: GalleryCollectionViewCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
        // layout.minimumLineSpacing = Constants.galleryMinimumLineSpacing
        //        contentInset = UIEdgeInsets(top: 0, left: Constants.leftDistanceToView, bottom: 0, right: Constants.rightDistanceToView)
        
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
        
        
    }
    
    
    func set(cells: [SushiModel]) {
        self.cells = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Int.max
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: GalleryCollectionViewCell.reuseId, for: indexPath) as! GalleryCollectionViewCell
        cell.mainImageView.image = cells[indexPath.row % cells.count].mainImage
        cell.nameLabel.text = cells[indexPath.row % cells.count].sushiName
        cell.smallDescriptionLabel.text = cells[indexPath.row % cells.count].smallDescription
        cell.costLabel.text = "$\(cells[indexPath.row % cells.count].cost)"
        
        return cell
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

