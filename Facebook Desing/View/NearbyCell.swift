//
//  NearbyCell.swift
//  Facebook Desing
//
//  Created by Maxim Granchenko on 5/13/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import LBTATools

class NearbyCell: LBTAListCell<Group> {
    
    let imageView = UIImageView()
    let nameLabel = UILabel(text: "Group Name", font: .systemFont(ofSize: 12, weight: .semibold), numberOfLines: 2)
    
    override var item: Group! {
        didSet {
            imageView.image = UIImage(named: item.imageName)
            nameLabel.text = item.name
        }
    }
    
    override func setupViews() {
        super.setupViews()
        
        imageView.layer.cornerRadius = 6
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true
        
        stack(imageView, nameLabel)
    }
}
