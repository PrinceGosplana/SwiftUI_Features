//
//  GradientDirection.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.12.2024.
//

import SwiftUI

struct GradientDirection: View {
    let gradientColors = Gradient(colors: [Color.pink, Color.black])
    
    var body: some View {
        HStack(spacing: 20) {
            Rectangle()
                .fill(LinearGradient(gradient: gradientColors,
                                     startPoint: .leading,
                                     endPoint: .bottom))
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(LinearGradient(gradient: gradientColors,
                                     startPoint: .bottomLeading,
                                     endPoint: .topTrailing))
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(LinearGradient(gradient: gradientColors,
                                     startPoint: .bottomTrailing,
                                     endPoint: .leading))
                .frame(width: 100, height: 100)
        }
        
             
    }
}

#Preview {
    GradientDirection()
}
