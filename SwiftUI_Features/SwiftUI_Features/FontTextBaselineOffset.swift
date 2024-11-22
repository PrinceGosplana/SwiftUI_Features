//
//  FontTextBaselineOffset.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.11.2024.
//

import SwiftUI

struct FontTextBaselineOffset: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("100")
            + Text(" SWIFTUI ")
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundStyle(.blue)
            + Text ("VIEWS")
            
            Group {
                Text("100").bold()
                + Text(" SWIFTUI ")
                    .font(Font.system(size: 60))
                    .fontWeight(.ultraLight)
                    .foregroundStyle(.blue)
                    .baselineOffset(-12) // Negative numbers make it go down
                + Text ("VIEWS").bold()
            }
        }
    }
}

#Preview {
    FontTextBaselineOffset()
}
