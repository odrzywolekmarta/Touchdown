//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Majka on 23/01/2023.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
           LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
               ForEach(brands) { brand in
                   BrandItemView(brand: brand)
               }
            } // grid
            .frame(height: 200)
            .padding(15)
        } // scrollview
    }
}

//MARK: - PREVIEW
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
