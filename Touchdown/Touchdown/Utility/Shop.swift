//
//  Shop.swift
//  Touchdown
//
//  Created by Majka on 23/01/2023.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: ProductModel?
}
