//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Majka on 23/01/2023.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top)
                .padding(.top, UIApplication.shared.safeAreaInsets?.top)
            
            // header
            HeaderDetailView()
                .padding(.horizontal)
            
            // detail top
            TopDetailView()
                .padding(.horizontal)
            
            // detail bottom
            // rat + sizes
            // description
            // quantity + favourite
            // add to cart
            Spacer()
            Text(sampleProduct.name)
        } // vstack
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue))
    }
}

//MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
