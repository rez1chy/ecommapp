//
//  Manager.swift
//  ecommapp
//
//  Created by Rezwan Chowdhury on 29/7/22.
//

import Foundation


struct Manager {
    
    let baseUrlString = "https://fakestoreapi.com/"
    
    
    let getAllCatUrl = "products/categories"
    
    let getProductListUrl = "products/category/"
    
    let getProductDetailsUrl = "products/"
    
    
    
    
    func getCategories(onCompletion: @escaping ([String])->Void) {
        
        let urlString = baseUrlString + getAllCatUrl
        let url = URL(string: urlString)!
        let task = URLSession.shared.dataTask(with: url) {
            
            (data, response, error) in
            guard let data = data else { return }
            
            do {
                // make sure this JSON is in the format we expect
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String] {
                    // try to read out a string array
                    print("cat data", json)
                    onCompletion(json)
                }
            } catch let error as NSError {
                print("Failed to load: \(error.localizedDescription)")
            }
        }
        
        task.resume()
    }
    
    
    func getProduct(forCat: String, onCompletion: @escaping (ProductsByCatModel)->Void) {
        
        var formattedStr = forCat
        if(forCat.contains(" ")) {
            let strs = forCat.split(separator: " ")
            formattedStr = strs[0] + "%20" + strs[1]
        }
        let urlString = baseUrlString + getProductListUrl + formattedStr
        print(urlString)
        let url = URL(string: urlString)!
        let task = URLSession.shared.dataTask(with: url) {
            
            (data, response, error) in
            guard let data = data else { return }
            
            do {
                // make sure this JSON is in the format we expect
                
                let productsByCatModel = try? JSONDecoder().decode(ProductsByCatModel.self, from: data)
                print("error", error)
                print("data", data)
                print("response", response)
                onCompletion(productsByCatModel!)

            } catch let error as NSError {
                print("Failed to load: \(error.localizedDescription)")
            }
        }
        
        task.resume()
        
        
    }
    
    func getProductDetails(id: String, onCompletion: @escaping (ProductDetailsModel)->Void) {
        
        let urlString = baseUrlString + getProductDetailsUrl + id
        print("product details", urlString)
        let url = URL(string: urlString)!
        let task = URLSession.shared.dataTask(with: url) {
            
            (data, response, error) in
            guard let data = data else { return }
            
            do {
                // make sure this JSON is in the format we expect
                
                let productDetailsModel = try? JSONDecoder().decode(ProductDetailsModel.self, from: data)
                print("error", error)
                print("data", data)
                print("response", response)
                onCompletion(productDetailsModel!)

            } catch let error as NSError {
                print("Failed to load: \(error.localizedDescription)")
            }
        }
        
        task.resume()
    }
    
}
