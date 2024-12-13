//
//  ColorIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 13.12.2024.
//

import SwiftUI

struct ColorIntro: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("You can treat colors as views with their own frames and modifiers.")
            HStack(spacing: 40) {
                Color.pink
                    .frame(width: 88, height: 88)
                Color.blue
                    .frame(width: 88, height: 88)
                Color.purple
                    .frame(width: 88, height: 88)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            Spacer()
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    ColorIntro()
}
