//
//  PostCell.swift
//  Facebook Desing
//
//  Created by Maxim Granchenko on 5/13/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import LBTATools

class PostCell: LBTAListCell<Post> {
    
    let profileImageView = CircularImageView(width: 40)
    let nameLabel = UILabel(text: "User Name", font: .boldSystemFont(ofSize: 14))
    let timeAgoLabel = UILabel(text: "12 mins", font: .systemFont(ofSize: 12), textColor: .lightGray)
    let messageLabel = UILabel(text: "Post Message", font: .systemFont(ofSize: 14), numberOfLines: 0)
    let postImageView = UIImageView()
    let globeImageView = CircularImageView(width: 12)
    
    override var item: Post! {
        didSet {
            profileImageView.image = UIImage(named: item.profileImageName)
            nameLabel.text = item.name
            messageLabel.text = item.messageText
            postImageView.image = UIImage(named: item.postImageName)
            timeAgoLabel.text = "\(item.timeAgo) • "
        }
    }
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = .white
        
        postImageView.contentMode = .scaleAspectFill
        postImageView.clipsToBounds = true
        globeImageView.image = #imageLiteral(resourceName: "earth-globe")
        
        stack(
            hstack(profileImageView,
                   stack(nameLabel,
                         hstack(timeAgoLabel, globeImageView, UIView()), spacing: 0),
                   spacing: 8).withMargins(.init(top: 8, left: 12, bottom: 0, right: 0)),
            hstack(messageLabel).withMargins(.init(top: 0, left: 12, bottom: 0, right: 12)),
            postImageView,
            spacing: 12
        )
        
    }
}
