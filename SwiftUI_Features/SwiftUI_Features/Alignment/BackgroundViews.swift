//
//  BackgroundViews.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 05.01.2025.
//

import SwiftUI

struct BackgroundViews: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.brown.opacity(0.2))
                .background {
                    Image(systemName: "flame")
                        .font(.largeTitle)
                }

            RoundedRectangle(cornerRadius: 25.0)
                .fill(.brown.opacity(0.2))
                .background(alignment: .topLeading) {
                    Image(systemName: "flame")
                        .font(.largeTitle)
                        .padding()
                }
        }
    }
}

#Preview {
    BackgroundViews()
}
