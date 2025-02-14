//
//  ImageLoaderView.swift
//  AppleMusicLayout
//
//  Created by Grzegorz Mzyk on 28/01/2025.
//

import SwiftUI

struct ImageLoaderView: View {
    
    var urlString: String = Constants.randomImage
    var resizingMode: ContentMode = .fill
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            
            
            .opacity(0.001)
            
            .overlay {
                AsyncImage(url: URL(string: urlString)) { phase in
                                    switch phase {
                                    case .empty:
                                        ProgressView()
                                    case .success(let image):
                                        image
                                        
                                            .resizable()
                                            .aspectRatio(contentMode: resizingMode)
                                            .background(.thinMaterial)
                                    case .failure:
                                        Image(systemName: "photo")
                                            .resizable()
                                            .scaledToFill()
                                        
                                        
                                    @unknown default:
                                        EmptyView()
                                    }
                                }
                            }

            }

    }


#Preview {
    ImageLoaderView()
}
