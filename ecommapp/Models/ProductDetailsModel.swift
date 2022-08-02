//
//  ProductDetailsModel.swift
//  ecommapp
//
//  Created by Rezwan Chowdhury on 30/7/22.
//

import Foundation

// MARK: - ProductDetailsModel
struct ProductDetailsModel: Codable {
    let id: Int
    let title: String
    let price: Double
    let productDetailsModelDescription, category: String
    let image: String
    //let productaddedtocart: Bool
    //let prodcount: Int

    enum CodingKeys: String, CodingKey {
        case id, title, price
        case productDetailsModelDescription = "description"
        case category, image
        //case productaddedtocart, prodcount
    }
}

