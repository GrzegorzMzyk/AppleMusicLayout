//
//  HomeView.swift
//  AppleMusicLayout
//
//  Created by Grzegorz Mzyk on 28/01/2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
             
               
                Text("HomeView")
                Text("HomeView")
                Text("HomeView")
                Text("HomeView")
                
            }
            .navigationTitle("Ekran Główny")
                .navigationBarTitleDisplayMode(.automatic)
                .toolbar {
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


#Preview {
    HomeView()
}
