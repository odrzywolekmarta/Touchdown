//
//  ContentView.swift
//  Touchdown
//
//  Created by Majka on 18/01/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES

    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.safeAreaInsets?.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / featuredtabViewRatio)
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }
                        } // grid
                        .padding(15)
                        
                        FooterView()
                            .padding(.horizontal)
                    } // vstack
                } // scroll
            } // vstack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } // zstack
        .ignoresSafeArea(.all, edges: .all)
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
