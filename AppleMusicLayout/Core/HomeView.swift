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
            ScrollView(.horizontal) {
                LazyHStack{
                    
                    ForEach(viewModel.products) { product in
                        BestForYouComponent(imageName: product.firstImage, title: product.title)
                    }
                    
                }
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
    
    
    
    
    

    
    



#Preview {
    HomeView(viewModel: AppleMusicViewModel())
}
