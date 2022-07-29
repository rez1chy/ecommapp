//
//  Category.swift
//  ecommapp
//
//  Created by Rezwan Chowdhury on 28/7/22.
//

import UIKit

struct Category {
    let title: String
    let image: UIImage
}

let categories: [Category] = [
    Category(title: "Electronics", image: UIImage(named: "Electronics")!),
    Category(title: "Medicines", image:#imageLiteral(resourceName: "Medicines.jpeg")),
    Category(title: "Toys", image:#imageLiteral(resourceName: "Toys.jpeg")),
    Category(title: "Groceries", image:#imageLiteral(resourceName: "Groceries.jpeg")),
    Category(title: "Automobiles", image:#imageLiteral(resourceName: "Automobiles.jpeg")),
    Category(title: "Fashion", image:#imageLiteral(resourceName: "Fashion.jpeg")),
    Category(title: "Watches", image:#imageLiteral(resourceName: "Watches.jpeg")),
    Category(title: "Eyewears", image:#imageLiteral(resourceName: "Eyewears.jpeg")),
    Category(title: "Books", image:#imageLiteral(resourceName: "Books.jpeg")),
    Category(title: "Furnitures", image:#imageLiteral(resourceName: "Furnitures.jpeg"))
]






// add these to cart
struct Cart {
    var products: [ProductsInCart]
    let TotalPrice: Double
}

struct ProductsInCart {
    let productId: String
    let noOfUnits: Int
    let totalPrice: Double
}


//struct Product {
//    let title: String
//    let image: UIImage
//    let price: String
//}

//let products: [Product] = [
//    Product(title: "Electronics", image: UIImage(named: "Electronics")!, price: "$150"),
//    Product(title: "Medicines", image:#imageLiteral(resourceName: "Medicines.jpeg"), price: "$20"),
//    Product(title: "Toys", image:#imageLiteral(resourceName: "Toys.jpeg"), price: "$150"),
//    Product(title: "Groceries", image:#imageLiteral(resourceName: "Groceries.jpeg"), price: "$55"),
//    Product(title: "Automobiles", image:#imageLiteral(resourceName: "Automobiles.jpeg"), price: "$1000"),
//    Product(title: "Fashion", image:#imageLiteral(resourceName: "Fashion.jpeg"), price: "$80"),
//    Product(title: "Watches", image:#imageLiteral(resourceName: "Watches.jpeg"), price: "$120"),
//    Product(title: "Eyewears", image:#imageLiteral(resourceName: "Eyewears.jpeg"), price: "$45"),
//    Product(title: "Books", image:#imageLiteral(resourceName: "Books.jpeg"), price: "$15"),
//    Product(title: "Furnitures", image:#imageLiteral(resourceName: "Furnitures.jpeg"), price: "$250")
//]
