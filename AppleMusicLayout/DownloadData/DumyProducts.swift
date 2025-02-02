//
//  DumyProducts.swift
//  AppleMusicLayout
//
//  Created by Grzegorz Mzyk on 28/01/2025.
//
import Foundation

struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let price, discountPercentage, rating: Double
    let stock: Int
    let brand: String?
    let category: String
    let images: [String]
    let thumbnail: String
    

    
    var firstImage: String {
        images.first ?? Constants.randomImage
    }
     var _brand: String {
        brand ?? ""
    }
    
    static var mock: Product {
        Product(
            id: 123,
            title: "Example product title",
            description: "this is description of example product",
            price: 99,
            discountPercentage: 0,
            rating: 6,
            stock: 8,
            brand: "Name Brand",
            category: "Category name",
            images: [Constants.randomImage, Constants.randomImage, Constants.randomImage],
            thumbnail: Constants.randomImage
        )
    }
}


struct ProductRow: Identifiable {
    
    let id = UUID().uuidString
    let title: String
    let products: [Product]
}



