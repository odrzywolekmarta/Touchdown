//
//  TitleView.swift
//  Touchdown
//
//  Created by Majka on 20/01/2023.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPERTIES
    var title: String
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        } // hstack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

//MARK: - PREVIEW
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
