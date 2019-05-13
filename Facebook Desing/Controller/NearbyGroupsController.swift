//
//  NearbyGroupsController.swift
//  Facebook Desing
//
//  Created by Maxim Granchenko on 5/13/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import LBTATools

class NearbyGroupsController: LBTAListHeaderController<NearbyCell, Group, UICollectionReusableView>, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 16, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 120, height: view.frame.height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = [
            .init(name: "Co-Ed Hikers of Colorado University", imageName: "hike"),
            .init(name: "Other People's Puppies", imageName: "puppy"),
            .init(name: "Secrets to Seasonal Gardening", imageName: "gardening"),
            .init(name: "Food for everyone!", imageName: "food"),
            .init(name: "Other People's Puppies", imageName: "food"),
        ]
    }
}

