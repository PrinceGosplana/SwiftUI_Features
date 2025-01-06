//
//  PriorityProblem.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.01.2025.
//

import SwiftUI

struct PriorityProblem: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Layout Priority").font(.largeTitle)
            Text("Solving Priorities").foregroundStyle(.gray)
            Text("Take a look at this problem here:")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundStyle(.black)
                .layoutPriority(1) // Second Priority
            VStack(alignment: .leading) {
                Text("Lorem Ipsum").font(.largeTitle)
                // You want this text to expand
                Text("Dolor amet man braid bushwick salvia, vinyl art party pickled exercitation.")
                    .foregroundStyle(.yellow)
                Text("Laborum bitters vice, letterpress pariatur pour-over iceland.").font(.caption)
            }.padding()
            Text("The text view in the middle (yellow) is getting truncated and you want to expand this. What can you do? (Notice the text views with yellow have priority.)")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundStyle(.black)
                .layoutPriority(2) // First Priority (highest number)
        }
        .font(.title)
    }
}

#Preview {
    PriorityProblem()
}
