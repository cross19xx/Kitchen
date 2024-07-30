//
//  RootRow.swift
//  Kitchen
//
//  Created by Kenneth Kwakye-Gyamfi on 30/07/2024.
//

import Foundation
import SwiftUI

struct KitchenItem: Identifiable {
    let id = UUID()
    
    let destination: AnyView
    let avatarUrl: String
    let title: String
    let description: String
    let source: URL
    
    static let example: KitchenItem = KitchenItem(
        destination: AnyView(Text("Example Kitchen Item")),
        avatarUrl: "ExampleAvatar",
        title: "Example Kitchen Item",
        description: "This is a preview example",
        source: URL(string: "https://www.google.com.gh")!
    )
}
