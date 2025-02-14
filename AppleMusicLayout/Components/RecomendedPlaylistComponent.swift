//
//  RecomendedPlaylistComponent.swift
//  AppleMusicLayout
//
//  Created by Grzegorz Mzyk on 10/02/2025.
//

import SwiftUI

struct RecomendedPlaylistComponent: View {
   
    var imageName: String = Constants.randomImage
    var thumbnail: String? = "Recomended Playlist"
    
    var body: some View {
        
        VStack(spacing: 8){
          
                ImageLoaderView(urlString: imageName)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .frame(width: 350, height: 600)
                    .overlay {
                        VStack(alignment: .leading) {
                            Spacer()
                            ZStack{
                                if let thumbnail {
                                    Text(thumbnail)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(.bottom,40)
                                }
                                    
                            }
                        }
                    }
                
        }
    }
}

#Preview {
    RecomendedPlaylistComponent()
}
