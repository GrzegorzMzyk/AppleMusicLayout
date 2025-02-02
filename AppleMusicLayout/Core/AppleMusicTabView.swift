//
//  AppleMusicHomeView.swift
//  AppleMusicLayout
//
//  Created by Grzegorz Mzyk on 28/01/2025.
//

import SwiftUI

struct AppleMusicTabView: View {
    
    @State private var selectedTabIndex: Int = 0

    var body: some View {
        TabView(selection: $selectedTabIndex) {
            HomeView(viewModel: AppleMusicViewModel())
                    .tabItem {
                        Label {
                            Text("Ekran Główny")
                        } icon: {
                            Image(systemName: "house.fill")
                        }
                    }
                    .tag(0)

                NewsView()
                    .tabItem {
                        Label {
                            Text("Nowe")
                        } icon: {
                            Image(systemName: "rectangle.3.offgrid.fill")
                        }

                    }.tag(1)
            
            RadioView()
                .tabItem {
                    Label {
                        Text("Radio")
                    } icon: {
                        Image(systemName: "dot.radiowaves.left.and.right")
                    }

                }.tag(2)
            
            LibraryView()
                .tabItem {
                    Label {
                        Text("Biblioteka")
                    } icon: {
                        Image(systemName: "rectangle.stack.person.crop.fill")
                    }

                }.tag(3)
            
            SearchView()
                .tabItem {
                    Label {
                        Text("Szukaj")
                    } icon: {
                        Image(systemName: "magnifyingglass")
                    }

                }.tag(4)
        }
        .padding(5)
        
        
    }
}

#Preview {
    AppleMusicTabView()
        
}
