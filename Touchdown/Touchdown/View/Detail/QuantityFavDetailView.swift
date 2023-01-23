//
//  QuantityFavDetailView.swift
//  Touchdown
//
//  Created by Majka on 23/01/2023.
//

import SwiftUI

struct QuantityFavDetailView: View {
//MARK: - PROPERTIES
    @State private var counter: Int = 0
    
//MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }

            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                if counter < 100 {
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }
            Spacer()
            
            Button {
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }

        } // hstack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

//MARK: - PREVIEW
struct QuantityFavDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavDetailView()
            .previewLayout(.sizeThatFits)
    }
}
