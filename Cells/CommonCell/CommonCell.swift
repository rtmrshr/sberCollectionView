//
//  CommonCell.swift
//  sberCollectionView
//
//  Created by  ratmir on 08.05.2023.
//

import UIKit

class CommonCell: UICollectionViewCell {
    //MARK: - IBOutlets
    @IBOutlet private var iconImageView: UIImageView!
    @IBOutlet private var textLabel: UILabel!
    @IBOutlet private var closeButton: UIButton!
    
    //MARK: - Public
    public func configure(icon: UIImage?, text: String) {
        iconImageView.image = icon
        textLabel.text = text
    }
    
    //MARK: - View Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.cornerRadius = 16
    }
}
 
