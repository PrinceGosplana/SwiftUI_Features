//
//  Border_RoundedCorners.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.01.2025.
//

import SwiftUI

struct Border_RoundedCorners: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("Border around Text")
                .padding()
                .overlay(Color.purple, in: RoundedRectangle(cornerRadius: 15).stroke(lineWidth: 5))
            Button("Button with RoundedRectangle", action: {})
                .padding()
                .background(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.purple, lineWidth: 5))
            Button("Button with Capsule", action: {})
                .padding()
                .background(Capsule()
                    .stroke(Color.purple, lineWidth: 5))
        }
        .font(.title)
    }
}

#Preview {
    Border_RoundedCorners()
}
