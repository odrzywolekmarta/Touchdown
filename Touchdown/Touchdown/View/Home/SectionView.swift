//
//  SectionView.swift
//  Touchdown
//
//  Created by Majka on 20/01/2023.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPERTIES
    @State var rotateClockwise: Bool = false
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
          Spacer()
          
          Text("categories".uppercased())
            .font(.footnote)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
          
          Spacer()
        } // vstack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
        .padding(.horizontal)
    }
}

//MARK: - PREVIEW
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
