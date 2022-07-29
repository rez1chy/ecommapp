//
//  ProductDetailsViewController.swift
//  ecommapp
//
//  Created by Rezwan Chowdhury on 29/7/22.
//

import UIKit

class ProductDetailsViewController: UIViewController {

    //var product:
    
    var productDetails: ProductDetailsModel!
    var productId: String!
    
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Manager().getProductDetails(id: productId) {
            model in
            self.productDetails = model
            DispatchQueue.main.async {
                self.productImageView.sd_setImage(with: URL(string:self.productDetails.image)!)
                
                self.titlelabel.text = self.productDetails.title
                self.descLabel.text = self.productDetails.productDetailsModelDescription
                self.priceLabel.text = String(self.productDetails.price)
            }
        }
        
        
        
        
        
//        titlelabel.text = product.title
//        descLabel.text = "lorem ipsum"
//        priceLabel.text = product.price
//        weightLabel.text = "2.5kg"
//        productImageView.image = product.image
    }

}
