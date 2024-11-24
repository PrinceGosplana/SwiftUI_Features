//
//  FontTextScaledMetric.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.11.2024.
//

import SwiftUI

struct FontTextScaledMetric: View {
    
    @ScaledMetric private var fontSize: CGFloat = 50
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Hello, World!")
            
            // You can use the @ScaledMetric property wrapper to adjust some property in relation to the dynamic type increasing or decreasing
            
            Text("Hello, World!")
                .font(.system(size: fontSize))
            
            Text("Hello, World!")
                .font(.system(size: 50))
        }
        .font(.title)
    }
}

#Preview {
    FontTextScaledMetric()
}
