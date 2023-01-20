//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Majka on 20/01/2023.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTIES
    let player: PlayerModel
    
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: - PREVIEW
struct FeaturedItemView_Previews: PreviewProvider {
    
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
