//
//  LazyVGridViewExample.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 31.03.2024.
//

import SwiftUI
/*
struct LazyVGridViewExample: View {

    /// spacing inside the gridItem set ONLY horizontal spacing
    let columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 3)
    var body: some View {
        ScrollView {
            /// spacing here set only vertical spacing
            LazyVGrid(columns: columns, spacing: 40) {
                ForEach(MockData.colors, id: \.self ) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill($0.gradient)
                        .frame(height: 100)
                }
            }
            .padding()
        }
    }
}
*/

struct LazyVGridViewExample: View {

    let columns = Array(repeating: GridItem(.flexible()), count: 3)
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, pinnedViews: .sectionHeaders) {
                Section {
                    ForEach(MockData.colors, id: \.self ) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill($0.gradient)
                            .frame(height: 100)
                    }
                } header: {
                    Label("Colours", systemImage: "swatchpalette")
                        .font(.largeTitle.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                Section {
                    ForEach(MockData.colors, id: \.self ) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill($0.gradient)
                            .frame(height: 100)
                    }
                } header: {
                    Label("Don't like these", systemImage: "paintpalette")
                        .font(.largeTitle.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .background(.red)
                        }
                }
            }
            .padding()
        }
    }
}

#Preview {
    LazyVGridViewExample()
}
