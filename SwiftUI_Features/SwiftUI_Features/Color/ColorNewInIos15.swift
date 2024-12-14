//
//  ColorNewInIos15.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 14.12.2024.
//

import SwiftUI

struct ColorNewInIos15: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Text("Here are some new colors you use natively in SwiftUI now.")
                .layoutPriority(1)
            
            Group {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.mint)
                    .overlay(Text("Mint"))
                RoundedRectangle(cornerRadius: 20)
                    .fill(.teal)
                    .overlay(Text("Teal"))
                RoundedRectangle(cornerRadius: 20)
                    .fill(.cyan)
                    .overlay(Text("Cyan"))
                RoundedRectangle(cornerRadius: 20)
                    .fill(.indigo)
                    .overlay(Text("Indigo").foregroundStyle(.white))
                RoundedRectangle(cornerRadius: 20)
                    .fill(.brown)
                    .overlay(Text("Brown"))
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    ColorNewInIos15()
}
