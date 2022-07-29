//
//  CategoryCollectionViewCell.swift
//  ecommapp
//
//  Created by Rezwan Chowdhury on 28/7/22.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var ProductImageView: UIImageView!
    
    @IBOutlet weak var CategoryLabel: UILabel!
    
    func setup (category: Category){
        ProductImageView.image = category.image
        CategoryLabel.text = category.title
    }
}


