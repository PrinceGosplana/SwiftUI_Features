//
//  DisclosureGroupModuleView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 17.08.2024.
//

import SwiftUI

struct DisclosureGroupModuleView: View {

    @State private var isExpended = false

    var body: some View {
        VStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 12) {
                Text("Frequently Asked Questions")
                    .font(.title2)
                    .fontWeight(.semibold)

                Text("These are the most commonly asked questions here")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            .padding(.vertical)

            DisclosureGroup("What does the membership include") {
                Text("The membership gets you unlimited access to all of our pro courses and app templates.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .font(.subheadline)
            .foregroundStyle(.primary)
            .padding(.horizontal)

            DisclosureGroup(
                content: {
                    Image(systemName: "mail")
                },
                label: {
                    HStack {
                        Image(systemName: "paperplane.circle.fill")

                        Text("Messages")
                    }
                }
            )

            DisclosureGroup(isExpended ? "Expended" : "Collapsed", isExpanded: $isExpended) {
                Text("Some custom content...")
            }
        }
    }
}

#Preview {
    DisclosureGroupModuleView()
}
