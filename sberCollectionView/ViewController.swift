//
//  ViewController.swift
//  sberCollectionView
//
//  Created by  ratmir on 08.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet private var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        
        let buttonCellNib = UINib(nibName: "ButtonCell", bundle: nil)
        collectionView.register(buttonCellNib, forCellWithReuseIdentifier: "ButtonCell")
        
        let commonCellNib = UINib(nibName: "CommonCell", bundle: nil)
        collectionView.register(commonCellNib, forCellWithReuseIdentifier: "CommonCell")
    }
}

//MARK: - CollectionView Data source
extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.item {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ButtonCell", for: indexPath) as! ButtonCell
            cell.configure(topImage: UIImage(systemName: "qrcode.viewfinder"), bottomImage: UIImage(systemName: "plus.circle"))
            return cell
            
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CommonCell", for: indexPath) as! CommonCell
            cell.configure(icon: UIImage(systemName: "applewatch"), text: "Let's checkout some new story")
            return cell
        }
        
    }
}
