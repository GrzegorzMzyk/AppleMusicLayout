//
//  BestForYouComponent.swift
//  AppleMusicLayout
//
//  Created by Grzegorz Mzyk on 01/02/2025.
//

import SwiftUI

struct BestForYouComponent: View {
    
    var imageName: String = Constants.randomImage
    var title: String = "Best for you"
    
    var body: some View {
        VStack(spacing: 8){
                ImageLoaderView(urlString: imageName)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .frame(width: 200, height: 300)
                    .overlay {
                        VStack(alignment: .leading) {
                            Spacer()
                            ZStack{
                                Rectangle()
                                    .background(.regularMaterial)
                                    .frame(height: 80)
                                    .cornerRadius(10)
                                        Text(title)
                                            .font(.headline)
                                            .foregroundColor(.white)
                                    
                            }
                        }
                    }
                
        }
        
    }
}
#Preview {
    ZStack{
        ScrollView(.horizontal) {
            LazyHStack{
                BestForYouComponent()
                BestForYouComponent()
                BestForYouComponent()
                BestForYouComponent()
                BestForYouComponent()
            }
        }
    }
    
    
    
}
