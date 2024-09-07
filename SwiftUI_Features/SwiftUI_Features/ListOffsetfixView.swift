//
//  ListOffsetfixView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 07.09.2024.
//

import SwiftUI

struct ListOffsetfixView: View {
    var body: some View {
        NavigationStack {
            //            ZStack(alignment: .bottom) {
            List {
                ForEach(0..<20) { _ in
                    episodeCell
                }
            }
            /// put floating view inside this modifier
            .safeAreaInset(edge: .bottom) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.pink.gradient.opacity(0.8))
                    .frame(maxWidth: .infinity, maxHeight: 70)
                    .padding()
            }

            //            }
            .navigationTitle("Fix for list")
        }
    }

    var episodeCell: some View {
        HStack(alignment: .top, spacing: 12) {
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 80, height: 80)
                .foregroundStyle(.indigo.gradient.opacity(0.3))

            VStack(alignment: .leading) {
                Text("Episode Title")
                    .font(.headline)

                Text("Here is the short descriptionn for the latest episode.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    ListOffsetfixView()
}
