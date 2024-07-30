//
//  RootView.swift
//  Kitchen
//
//  Created by Kenneth Kwakye-Gyamfi on 30/07/2024.
//

import SwiftUI

struct RootView: View {
    private let kitchenItems: [KitchenItem] = [
        KitchenItem.example
    ]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    Text("In my attempt to master iOS development, I have this repository setup to test my design skills. 👨🏾‍💻\n\nThe idea behind this repo is to get inspirations from all around the internet and implement them to the best of my knowledge.")
                    
                    Divider().padding(.top, 8.0)
                    
                    ForEach(kitchenItems) { kitchenItem in
                        KitchenRow(data: kitchenItem)
                    }
                }
                .padding()
            }
            .scrollBounceBehavior(.basedOnSize)
            .navigationTitle("Kitchen Sink Designs")
        }
    }
}

#Preview {
    RootView()
}
