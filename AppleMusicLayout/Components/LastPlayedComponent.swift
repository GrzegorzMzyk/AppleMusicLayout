//
//  LastPlayedComponent.swift
//  AppleMusicLayout
//
//  Created by Grzegorz Mzyk on 04/02/2025.
//

import SwiftUI

struct LastPlayedComponent: View {
    
    var imageName: String = Constants.randomImage
    var title: String? = "Last Played"
    var brand: String? = "Apple"
    
    var body: some View {
        VStack(spacing: 8){
                ImageLoaderView(urlString: imageName)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(width: 200, height: 200)
            HStack{
                if let brand {
                    Text(brand)
                        .bold()
                        .padding(.leading, 10.0)
                }
                Spacer()
            }
            
            
                
                
        }
        .padding(5)
        
    }
}
#Preview {
    ZStack{
        ScrollView(.horizontal) {
            LazyHStack{
                LastPlayedComponent()
                LastPlayedComponent()
                LastPlayedComponent()
                LastPlayedComponent()
            }
        }
       
    }
}
