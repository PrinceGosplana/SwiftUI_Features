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

            Text("LargeTitle")
                .font(.largeTitle)

            Text("Title")
                .font(.title)

            Text("Title2")
                .font(.title2)

            Text("Title3")
                .font(.title3)

            Text("Headline")
                .font(.headline)

            Text("Subheadline")
                .font(.subheadline)

            Text("Body")
                .font(.body)

            Text("Callout")
                .font(.callout)

            Text("Footnote")
                .font(.footnote)

            Text("Caption")
                .font(.caption)

            Text("Caption2")
                .font(.caption2)

        }
    }
}

#Preview {
    FontsExampleView()
}
