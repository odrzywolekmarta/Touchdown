//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Majka on 20/01/2023.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
