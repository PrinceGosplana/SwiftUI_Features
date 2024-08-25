//
//  UnEvenRoundedRectangleView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 09.03.2024.
//

import SwiftUI

struct UnEvenRoundedRectangleView: View {
    var body: some View {
        VStack {
            UnevenRoundedRectangle(topLeadingRadius: 35, bottomLeadingRadius: 15, bottomTrailingRadius: 35, topTrailingRadius: 15, style: .circular)
                .fill(.red.gradient)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(.black.gradient)
                .frame(width: 200, height: 200)
                .clipShape(.rect(topLeadingRadius: 35))
        }
    }
}

#Preview {
    UnEvenRoundedRectangleView()
}
