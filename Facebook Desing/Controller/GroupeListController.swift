//
//  GroupeListController.swift
//  Facebook Desing
//
//  Created by Maxim Granchenko on 5/13/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import LBTATools

class GroupsListController: LBTAListHeaderController<PostCell, Post, NearbyHeader>, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 210)
    }
    
    // collection top padding
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 6, left: 0, bottom: 0, right: 0)
    }
    
    //between section padding
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 6
    }
    
    //Width and height cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // auto sizing cells later....?
        return .init(width: view.frame.width, height: 420)
    }
    
    let optionsController = GroupsOptionsController(scrollDirection: .horizontal)
    
    lazy var customNavBar: UIView = {
        let v = UIView(backgroundColor: .white)
        
        let groupsLabel = UILabel(text: "Groups", font: .boldSystemFont(ofSize: 32))
        let stackView = v.stack(
            UIView(),
            v.stack(groupsLabel).padLeft(20),
            self.optionsController.view.withHeight(34),
            spacing: 8
            ).withMargins(.init(top: 0, left: 0, bottom: 12, right: 0))
        
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = #colorLiteral(red: 0.900582552, green: 0.9012405276, blue: 0.9075868726, alpha: 1)
        
        view.addSubview(customNavBar)
        let navBarHeight: CGFloat = 150
        customNavBar.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, size: .init(width: 0, height: navBarHeight))
        collectionView.contentInset = .init(top: navBarHeight + 4, left: 0, bottom: 0, right: 0)
        collectionView.scrollIndicatorInsets = collectionView.contentInset
        
        setupStatusBarCover()
        
        items = [
            Post.init(profileImageName: "post_profile", name: "Brianna Valerie • Other People's Puppies", timeAgo: "8 hrs", messageText: "Met this adorable little pup on my lunch break today. Her name is Bean and I will love her forever", postImageName: "post_puppy"),
            Post.init(profileImageName: "post_profile", name: "Brianna Valerie • Other People's Puppies", timeAgo: "2 weeks", messageText: "This is an amazing course worth checking out right now and I'm doing my best to work on the Chatting Features for when two users match with each other. This text is going to span a lot of lines!!!", postImageName: "tinder_firestore_500"),
            Post.init(profileImageName: "post_profile", name: "Brianna Valerie • Other People's Puppies", timeAgo: "8 hrs", messageText: "Met this adorable little pup on my lunch break today. Her name is Bean and I will love her forever", postImageName: "post_puppy"),
            Post.init(profileImageName: "post_profile", name: "Brianna Valerie • Other People's Puppies", timeAgo: "2 weeks", messageText: "This is an amazing course worth checking out right now and I'm doing my best to work on the Chatting Features for when two users match with each other. This text is going to span a lot of lines!!!", postImageName: "tinder_firestore_500"),
            Post.init(profileImageName: "post_profile", name: "Brianna Valerie • Other People's Puppies", timeAgo: "8 hrs", messageText: "Met this adorable little pup on my lunch break today. Her name is Bean and I will love her forever", postImageName: "post_puppy"),
            Post.init(profileImageName: "post_profile", name: "Brianna Valerie • Other People's Puppies", timeAgo: "2 weeks", messageText: "This is an amazing course worth checking out right now and I'm doing my best to work on the Chatting Features for when two users match with each other. This text is going to span a lot of lines!!!", postImageName: "tinder_firestore_500"),
        ]
    }
    
    fileprivate func setupStatusBarCover() {
        let cover = UIView(backgroundColor: .white)
        view.addSubview(cover)
        cover.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.topAnchor, trailing: view.trailingAnchor)
    }
}
