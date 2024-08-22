//
//  NewLayoutAPIView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 22.08.2024.
//

import SwiftUI

struct NewLayoutAPIView: View {
    @State private var tags: [Tag] = rawTags.compactMap { tag -> Tag? in
            .init(name: tag)
    }
    @State private var alignmentValue: Int = 1
    @State private var text: String = ""

    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                Picker("", selection: $alignmentValue) {
                    Text("Leading").tag(0)
                    Text("Center").tag(1)
                    Text("Trailing").tag(2)
                }
                .pickerStyle(.segmented)
                .padding(.bottom, 20)
                TagView(alignment: alignmentValue == 0 ? .leading : alignmentValue == 1 ? .center : .trailing, spacing: 10) {
                    ForEach($tags) { $tag in
                        Toggle(tag.name, isOn: $tag.isSelected)
                            .toggleStyle(.button)
                            .buttonStyle(.bordered)
                            .tint(tag.isSelected ? .blue : .gray)
                    }
                }
                .animation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6), value: alignmentValue)

                HStack {
                    /// MARK: New API
                    /// multi line TextField
                    TextField("Tag", text: $text, axis: .vertical)
                        .lineLimit(1...5)
                        .textFieldStyle(.roundedBorder)
                    Button("Add") {
                        withAnimation(.spring()) {
                            tags.append(Tag(name: text))
                            text = ""
                        }
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle(radius: 4))
                    .tint(.blue)
                    .disabled(text == "")
                }
            }
            .padding(15)
            .navigationTitle("Layout")
        }
    }
}

#Preview {
    NewLayoutAPIView()
}

// MARK: Building custom layout with the new layout API
private struct TagView: Layout {
    var alignment: Alignment = .center
    var spacing: CGFloat = 10

    init(alignment: Alignment, spacing: CGFloat) {
        self.alignment = alignment
        self.spacing = spacing
    }

    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        .init(width: proposal.width ?? 0, height: proposal.height ?? 0)
    }

    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        var origin = bounds.origin
        let maxWidth = bounds.width

        /// Type 1
        /*
        subviews.forEach { view in
            let viewSize = view.sizeThatFits(proposal)

            if (origin.x + viewSize.width + spacing) > maxWidth {
                // updating origin for next element in vertical order
                origin.y += (viewSize.height + spacing)
                // resetting horizontal axis
                origin.x = bounds.origin.x
            }
            view.place(at: origin, proposal: proposal)
            //adding spacing
            origin.x += (viewSize.width + spacing)

        }
        */

        /// Type 2

        var row: ([LayoutSubviews.Element], Double) = ([], 0.0)
        var rows: [([LayoutSubviews.Element], Double)] = []

        for view in subviews {
            let viewSize = view.sizeThatFits(proposal)

            if (origin.x + viewSize.width + spacing) > maxWidth {
                row.1 = bounds.maxX - origin.x + bounds.minX + spacing
                rows.append(row)
                row.0.removeAll()
                // resetting horizontal axis
                origin.x = bounds.origin.x
                // updating origin for next element in vertical order
                origin.y += (viewSize.height + spacing)
            }
            row.0.append(view)
            //adding spacing
            origin.x += (viewSize.width + spacing)
        }

        if !row.0.isEmpty {
            row.1 = bounds.maxX - origin.x + bounds.minX + spacing
            rows.append(row)
        }

        origin = bounds.origin

        for row in rows {
            // reseting x origin for new row
            origin.x = (alignment == .leading ? bounds.minX : (alignment == .trailing ? row.1 : row.1 / 2))

            for view in row.0 {
                let viewSize = view.sizeThatFits(proposal)
                view.place(at: origin, proposal: proposal)
                origin.x += (viewSize.width + spacing)
            }
            // max height in the row
            let maxHeight = row.0.compactMap { view -> CGFloat? in
                view.sizeThatFits(proposal).height
            }.max() ?? 0
            // updating vertical origin
            origin.y += (maxHeight + spacing)
        }
    }
}
// MARK: String tags
var rawTags: [String] = [
    "SwiftUI", "Xcode", "Apple", "WWDC 22", "iOS 16", "iPadOS 16", "macOS 13", "watchOS 9", "Xcode 14", "API's"
]

// MARK: Tag model
private struct Tag: Identifiable {
    var id = UUID().uuidString
    let name: String
    var isSelected = false
}
