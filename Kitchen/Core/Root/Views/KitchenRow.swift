//
//  KitchenRow.swift
//  Kitchen
//
//  Created by Kenneth Kwakye-Gyamfi on 30/07/2024.
//

import SwiftUI

struct KitchenRow: View {
    let data: KitchenItem

    var body: some View {
        VStack {
            // Omitting the first divider as we'll set it in the root view

            HStack {
                NavigationLink(destination: data.destination) {
                    HStack {
                        Image(data.avatarUrl)
                            .resizable()
                            .clipShape(.circle)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 36.0, height: 36.0)
                        
                        VStack(alignment: .leading) {
                            Text(data.title)
                                .bold()
                            
                            Text(data.description)
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                        }
                        .padding(.leading, 8.0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .buttonStyle(.plain)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Link(destination: data.source) {
                    Image(systemName: "link")
                        .resizable()
                        .frame(width: 20.0, height: 20.0)
                        .padding(.leading, 8.0)
                }
            }
            .padding(.vertical, 8.0)
            
            Divider()
        }
    }
}

#Preview {
    KitchenRow(data: KitchenItem.example)
}
