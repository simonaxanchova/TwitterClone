//
//  TwitterLogo.swift
//  TwitterClone
//
//  Created by Simona Anchova on 26.4.25.
//

import SwiftUI

struct TwitterLogo: View {
    
    var frameWidth: CGFloat
    var paddingTop: CGFloat
    
    var body: some View {
        Image("TwitterLogo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: frameWidth)
            .padding(.top, paddingTop)
    }
}


#Preview {
    TwitterLogo(frameWidth: 30, paddingTop: 15)
}
