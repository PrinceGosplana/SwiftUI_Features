//
//  LayoutPriority_Intro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.01.2025.
//

import SwiftUI

struct LayoutPriority_Intro: View {
    var body: some View {
        VStack(spacing: 28) {
            Text("Use layout priority to tell the parent which child views get priority when it comes to assigning layout space.")
                .layoutPriority(1) // Higher priority
            Text("No layout priority (default is 0):")
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(.hotdog).mask(Circle())
                    Text("Janice Okoro").font(.largeTitle)
                }
                Text("Lorem ipsum dolor amet laborum gastropub laboris magna.")
                    .font(.body)
            }
            .padding().foregroundStyle(.black)
            .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
            .padding(.horizontal)
            Text("Layout priority 2 used:")
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(.hotdog).mask(Circle())
                    Text("Janice Okoro").font(.largeTitle)
                    //        The middle section has the lowest layout priority and so those views will collapse and truncate before the other  views.
                }
                Text("Lorem ipsum dolor amet laborum gastropub laboris magna.")
                    .font(.body)
            }
            // Give this view spacing priority over the other child views
            .layoutPriority(2) // Highest priority
            .padding().foregroundStyle(.black)
            .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    LayoutPriority_Intro()
}
