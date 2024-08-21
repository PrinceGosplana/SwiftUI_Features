//
//  CustomLayoutView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.08.2024.
//

import SwiftUI

struct CustomLayoutView: View {
    var body: some View {
        /// Use as a normal stack view
        CustomStack {
            ForEach(1...5, id: \.self) { index in
                Circle()
                    .fill(.red)
                    .frame(width: 50, height: 50)
                    .overlay {
                        Text("\(index)")
                    }
            }
        }
        .frame(height: 300)
    }
}

#Preview {
    CustomLayoutView()
}

/// New Custom Layout
/// It will help to create our own custom layout and gives more flexibility to use
struct CustomStack: Layout {
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        let requiredWidth = subviews.compactMap { view -> Double? in
            return view.sizeThatFits(.unspecified).width
        }.max()
        return .init(width: requiredWidth ?? 100, height: proposal.height ?? 100)
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        var origin = bounds.origin
        for subView in subviews {
            subView.place(at: origin, anchor: .topLeading, proposal: proposal)
            /// For placing views at vertical adding each view size to origin. So that next view will place below the current view
            origin.y += subView.sizeThatFits(.unspecified).height
//            origin.x += subView.sizeThatFits(.unspecified).width
        }
    }
}
