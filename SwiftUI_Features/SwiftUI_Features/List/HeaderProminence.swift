//
//  HeaderProminence.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.10.2024.
//

import SwiftUI

struct HeaderProminence: View {
    var body: some View {
        List {
            Section {
                Text("You can also use header prominence to style the header.")
                    .listRowBackground(Color.green)
            } header: {
                Text("Standard Header Prominence")
            }
            .headerProminence(.standard)
            Section {
                Text("Use increased header prominence to make it stand out more.")
                    .listRowBackground(Color.green)
            } header: {
                Text("Increased Header Prominence")
            }
            .headerProminence(.increased)
        }
        .font(.title)
    }
}

#Preview {
    HeaderProminence()
}
