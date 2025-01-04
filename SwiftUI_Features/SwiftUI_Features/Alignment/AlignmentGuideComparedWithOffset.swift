//
//  AlignmentGuideComparedWithOffset.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.01.2025.
//

import SwiftUI

struct AlignmentGuideComparedWithOffset: View {
    var body: some View {
        VStack(spacing: 25) {
            Text("Use the alignmentGuide modifier to position views in relation to a guide. Guides can be vertical or horizontal")
                .layoutPriority(1)
            Text("Using alignment guide")
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
            .border(Color.red, width: 2)
            Text("Using offset")
            HStack {
                Image(systemName: "1.circle")
                    .offset(y: -20)
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                    .offset(y: 20)
            }
            .border(Color.red, width: 2)
            Text("Using alignment guides will move the frame of the view. Offset only moves the content (frame stays).")
        }
        .font(.title)
    }
}

#Preview {
    AlignmentGuideComparedWithOffset()
}
