//
//  ProductsTableViewController.swift
//  ecommapp
//
//  Created by Rezwan Chowdhury on 29/7/22.
//

import UIKit
import SDWebImage

class ProductsTableViewController: UITableViewController {

    var catname: String!
    var products: ProductsByCatModel? = []
    
//    var products: [Product] = [
//        .init(title: "Electronics", image: UIImage(named: "Electronics")!, price: "$150"),
//        .init(title: "Medicines", image:#imageLiteral(resourceName: "Medicines.jpeg"), price: "$20"),
//        .init(title: "Toys", image:#imageLiteral(resourceName: "Toys.jpeg"), price: "$150"),
//        .init(title: "Groceries", image:#imageLiteral(resourceName: "Groceries.jpeg"), price: "$55"),
//        .init(title: "Automobiles", image:#imageLiteral(resourceName: "Automobiles.jpeg"), price: "$1000"),
//        .init(title: "Fashion", image:#imageLiteral(resourceName: "Fashion.jpeg"), price: "$80"),
//        .init(title: "Watches", image:#imageLiteral(resourceName: "Watches.jpeg"), price: "$120"),
//        .init(title: "Eyewears", image:#imageLiteral(resourceName: "Eyewears.jpeg"), price: "$45"),
//        .init(title: "Books", image:#imageLiteral(resourceName: "Books.jpeg"), price: "$15"),
//        .init(title: "Furnitures", image:#imageLiteral(resourceName: "Furnitures.jpeg"), price: "$250")
//    ]


    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = catname
        
        
        Manager().getProduct(forCat: catname) {
            model in
            
            self.products = model
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
                // activity indicator
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return products?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as! ProductTableViewCell
        
        cell.PriceLabel.text = String(products?[indexPath.row].price ?? 0)
        cell.ProductLabel.text = products?[indexPath.row].title
        cell.ProdImageView.sd_setImage(with: URL(string:products![indexPath.row].image)!)
        
        return cell
        
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProductDetailsViewController") as! ProductDetailsViewController
        //vc.product = products[indexPath.row]
        vc.productId = String(products![indexPath.row].id)
        navigationController?.pushViewController(vc, animated: true)
    }


}
