//
//  ButtonCell.swift
//  sberCollectionView
//
//  Created by  ratmir on 08.05.2023.
//

import UIKit

class ButtonCell: UICollectionViewCell {
     //MARK: - IBOutlets
    @IBOutlet private var topButton: UIButton!
    @IBOutlet private var bottomButton: UIButton!
    
    //MARK: - Public
    func configure(topImage: UIImage?, bottomImage: UIImage?) {
        topButton.setImage(topImage, for: .normal)
        bottomButton.setImage(bottomImage, for: .normal)
    }
    
    //MARK: - View lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        topButton.layer.cornerRadius = 16
        bottomButton .layer.cornerRadius = 16
    }
}
