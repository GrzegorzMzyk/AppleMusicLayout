//
//  ContentView.swift
//  AppleMusicLayout
//
//  Created by Grzegorz Mzyk on 28/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    AppleMusicTabView()
}
