//
//  HomeView.swift
//  AppleMusicLayout
//
//  Created by Grzegorz Mzyk on 28/01/2025.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel =  AppleMusicViewModel()

    var body: some View {
        
        NavigationStack{
            ScrollView(.vertical) {

                CustomHomeView(productsArray: viewModel.products) { product in
                    BestForYouComponent(imageName: product.firstImage, title: product.title)
                }
                
                TitleContent(bestForYouTitle:viewModel.products.first?.category.rawValue)
                
                CustomHomeView(productsArray: viewModel.products) { product in
                    BestForYouComponent(imageName: product.firstImage, title: product.title)
                }
                
                CustomHomeView(productsArray: viewModel.products) { product in
                    LastPlayedComponent(imageName: product.firstImage, brand: product.brand)
                }
                
                CustomHomeView(productsArray: viewModel.products) { product in
                    LastPlayedComponent(imageName: product.firstImage, brand: product.brand)
                }
                
                TitleContent(bestForYouTitle:viewModel.products.randomElement()?.brand)
                
                CustomHomeView(productsArray: viewModel.products) { product in
                    BestForYouComponent(imageName: product.firstImage, title: product.title)
                }
                
                TitleContent(bestForYouTitle:viewModel.products.randomElement()?.brand)
                
                CustomHomeView(productsArray: viewModel.products) { product in
                    LastPlayedComponent(imageName: product.firstImage, brand: product.brand)
                }
                
                TitleContent(bestForYouTitle:viewModel.products.randomElement()?.brand)
                
                CustomHomeView(productsArray: viewModel.products) { product in
                    LastPlayedComponent(imageName: product.firstImage, brand: product.brand)
                }

                TitleContent(bestForYouTitle:viewModel.products.randomElement()?.brand)
                CustomHomeView(productsArray: viewModel.products) { product in
                    LastPlayedComponent(imageName: product.firstImage, brand: product.brand)
                }
                
                CustomHomeView(productsArray: viewModel.products) { product in
                    RecomendedPlaylistComponent(imageName: product.firstImage, thumbnail: product.thumbnail)
                }
                                
            }

        
        .navigationTitle("Ekran Główny")
        .navigationBarTitleDisplayMode(.automatic)
        .toolbar{
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                    print("Dodaj kliknięty!")
                }) {
                    Circle()
                        .frame(width: 32, height: 32)
                }
                }
            }
        }
        
    }
    
}

func CustomHomeView<Content: View>(productsArray: [Product], viewComponent: @escaping (Product) -> Content ) -> some View {
    
    ScrollView(.horizontal) {
        LazyHStack{
            ForEach(productsArray) { product in
                viewComponent(product)
            }
        }
    }
}
    

#Preview {
    HomeView(viewModel: AppleMusicViewModel())
}

struct TitleContent: View {
    
    
    var bestForYouTitle : String? = "best for you"
    var body: some View {
        HStack {
            if let bestForYouTitle {
                Text(bestForYouTitle)
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(10)
            }
            Spacer()
        }
    }
}
