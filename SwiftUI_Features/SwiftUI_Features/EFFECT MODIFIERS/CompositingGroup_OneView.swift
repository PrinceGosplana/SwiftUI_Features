//
//  CompositingGroup_OneView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 11.01.2025.
//

import SwiftUI

struct CompositingGroup_OneView: View {
    var body: some View {
        VStack(spacing: 40) {
        Text("Composting means to combine two or more things to make one thing. Use this modifier to combine views to make one view.")
        TwoCircles()
        .opacity(0.5) // Apply to each view within
        .shadow(color: Color.black, radius: 3)
        TwoCircles()
        .compositingGroup() // Make into one view
        .opacity(0.5)
        .shadow(color: Color.black, radius: 3)
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    CompositingGroup_OneView()
}

struct TwoCircles: View {
    var body: some View {
        HStack(spacing: -60.0) {
            Circle()
                .foregroundStyle(.red)
            Circle()
                .foregroundStyle(.green)
        }
        .frame(height: 160)
    }
    //These views are composited into one view. So when the modifiers are applied, they treat all subviews as one single view. Notice how the opacity is not applied to each individual view and how the shadow just goes around the outside of the views.
}
