//
//  LazyHGridViewExample.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 31.03.2024.
//

import SwiftUI

struct LazyHGridViewExample: View {

    let rows = Array(repeating: GridItem(.fixed(150)), count: 3)

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                ForEach(MockData.colors, id: \.self ) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill($0.gradient)
                        .frame(width: 100)
                }
            }
            .padding()
        }
    }
}

#Preview {
    LazyHGridViewExample()
}
