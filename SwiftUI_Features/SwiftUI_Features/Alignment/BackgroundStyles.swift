//
//  BackgroundStyles.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.01.2025.
//

import SwiftUI

struct BackgroundStyles: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Color")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
            //        The background modifier can be used with all 5 categories of styles.
            
            Text("Gradient")
                .frame(maxWidth: .infinity)
                .padding()
                .background(LinearGradient(colors: [.orange, .pink],
                                           startPoint: .leading, endPoint: .trailing))
            Text("Material")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.regularMaterial)
            Text("Hierarchal")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.tertiary)
            Text("Semantic")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.selection)
        }
        .font(.title)
    }
}

#Preview {
    BackgroundStyles()
}
