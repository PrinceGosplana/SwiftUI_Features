//
//  FixedSizeTextTruncated.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 05.01.2025.
//

import SwiftUI

struct FixedSizeTextTruncated: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Use the fixedSize modifier to prevent text from trunc  layoutPriority won't work.")
            Form {
                Section {
                    Text("Sometimes you get text that truncates like this:")
                    Text("This text goes on for too long and will eventually get truncated if you don't use the fixedSize modifier.")
                        .listRowBackground(Color.pink)
                        .layoutPriority(1) // Does not show truncated text
                    Text("This text goes on for too long and will eventually get truncated if you don't use the fixedSize modifier.")
                        .listRowBackground(Color.green)
                        .fixedSize(horizontal: false, vertical: true)
                } header: {
                    Text("Text in a Form")
                        .font(.largeTitle)
                }
            }
        }
        .font(.title2)
    }
}

#Preview {
    FixedSizeTextTruncated()
}
