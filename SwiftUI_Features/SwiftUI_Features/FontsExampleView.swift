//
//  FontsExampleView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 05.08.2024.
//

import SwiftUI

struct FontsExampleView: View {
    var body: some View {
        VStack(spacing: 30) {

            Text("LargeTitle - 34")
                .font(.largeTitle)

            Text("Title - 28")
                .font(.title)

            Text("Title2 - 22")
                .font(.title2)

            Text("Title3 - 20")
                .font(.title3)

            Text("Headline - 17")
                .font(.headline)

            Text("Subheadline - 15")
                .font(.subheadline)

            Text("Body - 17")
                .font(.body)

            Text("Callout - 16")
                .font(.callout)

            Text("Footnote - 13")
                .font(.footnote)

            Text("Caption - 12")
                .font(.caption)

            Text("Caption2 - 11")
                .font(.caption2)

        }
    }
}

#Preview {
    FontsExampleView()
}
