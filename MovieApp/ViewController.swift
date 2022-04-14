//
//  ViewController.swift
//  MovieApp
//
//  Created by Никита on 12.04.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
//    override func loadView() {
//        view.backgroundColor = .blue
//    }
    private var galleryCollectionView = GalleryCollectionView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = .blue
        view.addSubview(galleryCollectionView)
        galleryCollectionView.snp.makeConstraints { (make) -> Void in
            make.leading.equalToSuperview ()
              make.top.equalToSuperview ()
              make.trailing.equalToSuperview ()
              make.bottom.equalToSuperview ()
        }
        
    
        
//        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        galleryCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
//        galleryCollectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        
        galleryCollectionView.set(cells: SushiModel.fetchSushi())
    }
    var isFirstTime = true
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if isFirstTime {
            isFirstTime = false
            let selectedIndex = IndexPath(item: galleryCollectionView.cells.count / 2, section: 0)
              self.galleryCollectionView.scrollToItem(at: selectedIndex, at: .centeredHorizontally, animated: false)

        }
    }

}


