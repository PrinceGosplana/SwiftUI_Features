//
//  FontWidths.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 20.11.2024.
//

import SwiftUI

struct FontWidths: View {
    var body: some View {
        VStack(spacing: 24.0) {
            Text("Hello, World!")
                .fontWidth(.compressed)
            Text("Hello, World!")
                .fontWidth(.condensed)
            Text("Hello, World!")
                .fontWidth(.standard)
            Text("Hello, World!")
                .fontWidth(.expanded)
            Text("Hello, World!")
                .font(.largeTitle.weight(.heavy).width(.compressed))
            Text("Hello, World!")
                .fontDesign(.serif)
                .font(.largeTitle.weight(.heavy))
            Text("Hello, World!")
                .fontDesign(.serif)
                .font(.largeTitle.weight(.heavy).width(.expanded))
                .font(.largeTitle)
        }
    }
}

#Preview {
    FontWidths()
}
