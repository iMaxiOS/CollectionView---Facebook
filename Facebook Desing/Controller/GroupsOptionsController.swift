//
//  GroupsOptionsController.swift
//  Facebook Desing
//
//  Created by Maxim Granchenko on 5/13/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import LBTATools

class GroupsOptionsController: LBTAListController<OptionCell, Option>, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // auto sizing????
        return .init(width: 150, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 20, bottom: 0, right: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = [
            .init(title: "Your Groups", iconName: "multiple-users-silhouette"),
            .init(title: "Discover", iconName: "searching-magnifying-glass"),
            .init(title: "Your Groups", iconName: "multiple-users-silhouette"),
            .init(title: "Discover", iconName: "searching-magnifying-glass"),
            .init(title: "Your Groups", iconName: "multiple-users-silhouette"),
            .init(title: "Discover", iconName: "searching-magnifying-glass"),
        ]
    }
    
}
