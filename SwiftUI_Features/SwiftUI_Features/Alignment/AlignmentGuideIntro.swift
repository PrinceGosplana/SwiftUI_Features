//
//  AlignmentGuideIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.01.2025.
//

import SwiftUI

struct AlignmentGuideIntro: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("Use the alignmentGuide modifier to position views in relation to a guide. Guides can be vertical or horizontal.")
            Text("Use Vertical Guides in HStacks")
            ZStack {
                HStack {
                    Image(systemName: "1.circle")
                        .alignmentGuide(VerticalAlignment.center) { _
                            in 20 }
                    Image(systemName: "2.circle")
                        .alignmentGuide(VerticalAlignment.center) { _
                            in 0 }
                    Image(systemName: "3.circle")
                        .alignmentGuide(VerticalAlignment.center) { _
                            in -20 }
                }
                Divider().background(Color.red)
            }
            Text("Use Horizontal Guides in VStacks")
            ZStack {
                VStack(spacing: 10) {
                    Image(systemName: "1.circle")
                        .alignmentGuide(HorizontalAlignment.center) { _ in 20 }
                    Image(systemName: "2.circle")
                        .alignmentGuide(HorizontalAlignment.center) { _ in 0 }
                    Image(systemName: "3.circle")
                        .alignmentGuide(HorizontalAlignment.center) { _ in -20 }
                    HStack {
                    }
                }
                Divider().background(Color.red)
            }
        }
        .font(.title)
    }
}

#Preview {
    AlignmentGuideIntro()
}
