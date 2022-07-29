//
//  ProductTableViewCell.swift
//  ecommapp
//
//  Created by Rezwan Chowdhury on 29/7/22.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    static let identifier = "ProductTableViewCell"

    @IBOutlet weak var ProdImageView: UIImageView!
    
    @IBOutlet weak var ProductLabel: UILabel!
    @IBOutlet weak var PriceLabel: UILabel!
    
//    func setup (prods: Product){
//        ProdImageView.image = prods.image
//        ProductLabel.text = prods.title
//        
//        PriceLabel.text = prods.price
//    }
}
