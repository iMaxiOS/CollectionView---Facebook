//
//  OptionCell.swift
//  Facebook Desing
//
//  Created by Maxim Granchenko on 5/13/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import LBTATools

class OptionCell: LBTAListCell<Option> {
    
    let titleLabel = UILabel(text: "Title", font: .boldSystemFont(ofSize: 14))
    let iconImageView = UIImageView()
    
    override var item: Option! {
        didSet {
            titleLabel.text = item.title
            iconImageView.image = UIImage(named: item.iconName)
        }
    }
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = #colorLiteral(red: 0.9281324744, green: 0.9288102984, blue: 0.9350962043, alpha: 1)
        iconImageView.contentMode = .scaleAspectFit
        let sv = stack(hstack(iconImageView.withWidth(18), titleLabel, spacing: 8))
        sv.alignment = .center
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.height / 2
    }
}
