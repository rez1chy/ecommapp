//
//  ProductsByCatModel.swift
//  ecommapp
//
//  Created by Rezwan Chowdhury on 30/7/22.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let productsByCatModel = try? newJSONDecoder().decode(ProductsByCatModel.self, from: jsonData)

import Foundation

// MARK: - ProductsByCatModelElement
struct ProductsByCatModelElement: Codable {
    let id: Int
    let title: String
    let price: Double
    let productsByCatModelDescription, category: String
    let image: String
    let rating: Rating

    enum CodingKeys: String, CodingKey {
        case id, title, price
        case productsByCatModelDescription = "description"
        case category, image, rating
    }
}

// MARK: - Rating
struct Rating: Codable {
    let rate: Double
    let count: Int
}

typealias ProductsByCatModel = [ProductsByCatModelElement]
