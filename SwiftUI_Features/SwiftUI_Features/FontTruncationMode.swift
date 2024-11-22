//
//  FontTruncationMode.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.11.2024.
//

import SwiftUI

struct FontTruncationMode: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text").font(.largeTitle)
            Text("Truncation Mode").font(.title).foregroundStyle(.gray)
            Image("TruncationMode")
            Text("When text gets truncated, you can control where the ellipsis (...) shows.")
                .frame(maxWidth: .infinity).padding()
                .foregroundStyle(.white).background(Color.green)
                .font(.title)
            Text("Default: .truncationMode(.tail)")
                .frame(maxWidth: .infinity).padding()
                .foregroundStyle(.white).background(Color.green)
                .font(.title)
            // Text automatically defaults at end
            Text("This will be the best day of your life!")
                .padding(.horizontal)
                .lineLimit(1)
            Text(".truncationMode(.middle)")
                .frame(maxWidth: .infinity).padding()
                .foregroundStyle(.white).background(Color.green)
            Text("This will be the best day of your life!")
                .truncationMode(.middle) // Truncate in middle
                .padding(.horizontal)
                .lineLimit(1)
            Text(".truncationMode(.head)")
                .frame(maxWidth: .infinity).padding()
                .foregroundStyle(.white).background(Color.green)
            Text("This will be the best day of your life!")
                .truncationMode(.head) // Truncate at beginning
                .padding(.horizontal)
                .lineLimit(1)
        }
        .font(.title)
    }
}

#Preview {
    FontTruncationMode()
}
