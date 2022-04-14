//
//  GalleryCollectionViewCell.swift
//  MovieApp
//
//  Created by Никита on 14.04.2022.
//

import UIKit
import SnapKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "GalleryCollectionViewCell"
    
    let mainImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .gray
        imageView.layer.cornerRadius = 15
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = #colorLiteral(red: 0.007841579616, green: 0.007844132371, blue: 0.007841020823, alpha: 1)
        label.backgroundColor = .red
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let smallDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let likeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "like")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let costLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mainImageView)
        addSubview(nameLabel)
//        addSubview(smallDescriptionLabel)
//        addSubview(likeImageView)
//        addSubview(costLabel)
        
        backgroundColor = .white
        
        // mainImageView constraints
        mainImageView.snp.makeConstraints { (make) -> Void in
            make.leading.equalToSuperview ()
              make.top.equalToSuperview ()
              make.trailing.equalToSuperview ()
              make.bottom.equalToSuperview ()
            //make.width.equalToSuperview().multipliedBy ( 0.8 )
           
        }
        nameLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(mainImageView.snp_bottomMargin).offset(-30)
              make.trailing.equalTo(mainImageView.snp_trailingMargin).offset(-10)
            make.leading.equalTo(mainImageView.snp_leadingMargin).offset(10)
            make.height.equalTo(30)
           
        }

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 15
        self.layer.shadowRadius = 9
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 5, height: 8)
        
        self.clipsToBounds = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
