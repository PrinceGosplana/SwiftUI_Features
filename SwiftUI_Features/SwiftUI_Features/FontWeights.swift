//
//  FontWeights.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 19.11.2024.
//

import SwiftUI

struct FontWeights: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Text")
                .font(.largeTitle)
            Text("Font Weights")
                .font(.title)
                .foregroundStyle(.gray)
            Image("FontWeight")
            Text("You can apply a variety of font weights to the Text view.")
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green)
                .foregroundStyle(.white)
                .font(.title)
            
            Group {
                Text("Ultralight")
                    .fontWeight(.ultraLight)
                Text("Thin")
                    .fontWeight(.thin)
                Text("Light")
                    .fontWeight(.light)
                Text("Regular")
                    .fontWeight(.regular)
                Text("Medium")
                    .fontWeight(.medium)
                Text("Semibold")
                    .fontWeight(.semibold)
                Text("Bold")
                    .fontWeight(.bold)
                Text("Heavy")
                    .fontWeight(.heavy)
                Text("Black")
                    .fontWeight(.black)
            }.font(.title)
        }
    }
}

#Preview {
    FontWeights()
}
