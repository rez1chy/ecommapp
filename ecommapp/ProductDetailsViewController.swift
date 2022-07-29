//
//  ProductDetailsViewController.swift
//  ecommapp
//
//  Created by Rezwan Chowdhury on 29/7/22.
//

import UIKit

class ProductDetailsViewController: UIViewController {

    var product: Product!
    
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titlelabel.text = product.title
        descLabel.text = "lorem ipsum"
        priceLabel.text = product.price
        productImageView.image = product.image
    }

}
