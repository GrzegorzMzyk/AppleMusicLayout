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
    @Published var category: [Category] = []
    
    init()  {
        Task {
            await getData()
        }
    }

    func getData() async  {
        guard products.isEmpty else { return }
        do {
            products = try await Array(Downloader().getProducts().prefix(upTo: 20))
        } catch {
            print("error of fetch users/products: \(error.localizedDescription)")
        }
    }
}
