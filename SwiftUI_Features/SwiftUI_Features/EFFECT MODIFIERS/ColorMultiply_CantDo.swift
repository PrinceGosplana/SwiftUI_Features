//
//  ColorMultiply_CantDo.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 11.01.2025.
//

import SwiftUI

struct ColorMultiply_CantDo: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("You can't use color multiply to set colors.")
            // This won't work:
            // .foregroundStyle(Color.orange.colorMultiply(.purple))
                .foregroundStyle(Color.orange)
            Text("You can't use color multiply to fill shapes.")
            Circle()
            // This won't work:
            // .fill(Color.orange.colorMultiply(.yellow))
                .fill(Color.orange)
            Text("You CAN use color multiply for background layers.")
                .padding()
                .background {
                    Color.orange.colorMultiply(.yellow)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    ColorMultiply_CantDo()
}
