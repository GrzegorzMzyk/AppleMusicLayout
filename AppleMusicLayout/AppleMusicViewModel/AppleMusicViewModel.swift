//
//  AppleMusicViewModel.swift
//  AppleMusicLayout
//
//  Created by Grzegorz Mzyk on 02/02/2025.
//

import Foundation
import SwiftUI
import Combine

@MainActor
class AppleMusicViewModel: Identifiable, ObservableObject {
    
    @Published var products: [Product] = []
    @Published var productRows: [ProductRow] = []
    
    init()  {
        Task {
            await getData()
        }
    }

        
    func getData() async  {
        guard products.isEmpty else { return }
        do {
            products = try await Array(Downloader().getProducts().prefix(upTo: 20))
          
            
            var rows: [ProductRow] = []
                        let allBrands = Set(products.map({ $0._brand }))
                        for brand in allBrands {
                            rows.append(ProductRow(title: brand.capitalized, products: products))
                        }
            productRows = rows
        
            
        } catch {
            print("error of fetch users/products: \(error.localizedDescription)")
        }
    }
}
