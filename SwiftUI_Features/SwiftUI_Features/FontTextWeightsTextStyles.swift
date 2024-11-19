//
//  FontTextWeightsTextStyles.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 19.11.2024.
//

import SwiftUI

struct FontTextWeightsTextStyles: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image("FontWeight")
                Image(systemName: "plus")
                Image("Font")
            }
            .font(.title)
            
            Text("Ultralight - Title")
                .fontWeight(.ultraLight)
                .font(.title)
            Text("Thin - Body")
                .fontWeight(.thin)
                .font(.body)
            Text("Light - Large Title")
                .fontWeight(.light)
                .font(.largeTitle)
            Text("Bold - Callout")
                .fontWeight(.bold)
                .font(.callout)
            Text("Black - Title")
                .font(Font.title.weight(.black))
            
        }
    }
}

#Preview {
    FontTextWeightsTextStyles()
}
