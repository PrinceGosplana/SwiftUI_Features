//
//  PriorityProblem2.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.01.2025.
//

import SwiftUI

struct PriorityProblem2: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Layout Priority").font(.largeTitle)
            Text("Solving Priorities").foregroundStyle(.gray)
            Text("You make sure the middle text view below has the highest priority:")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundStyle(.black)
                .layoutPriority(1)
            VStack(alignment: .leading) {
                Text("Lorem Ipsum").font(.largeTitle)
                Text("Dolor amet man braid bushwick salvia, vinyl art party pickled exercitation.")
                    .foregroundStyle(.yellow)
                // Make highest priority
                    .layoutPriority(100)
                Text("Laborum bitters vice, letterpress pariatur pour-over iceland.").font(.caption)
            }.padding()
            Text("This still didn't solve the problem. Why?")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundStyle(.black)
                .layoutPriority(2)
        }
        .font(.title)
    }
}

#Preview {
    PriorityProblem2()
}
