//
//  PriorityProblemSolve.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.01.2025.
//

import SwiftUI

struct PriorityProblemSolve: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Layout Priority").font(.largeTitle)
            Text("Solution").foregroundStyle(.gray)
            Text("3. Now, this text view has third highest priority.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundStyle(.black)
                .layoutPriority(1) // Third highest
            Text("1. This VStack has the HIGHEST layout priority:")
                .padding(.horizontal)
            VStack(alignment: .leading) {
                Text("Lorem Ipsum").font(.largeTitle)
                Text("Dolor amet man braid bushwick salvia, vinyl art party pickled exercitation.")
                    .foregroundStyle(.yellow)
                    .layoutPriority(1) // Highest priority among these sibling views
                Text("Laborum bitters vice, letterpress pariatur pour-over iceland.").font(.caption)
            }
            .padding()
            .layoutPriority(3) // Highest priority among these sibling views
            Text("2. This text view has second highest priority.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundStyle(.black)
                .layoutPriority(2) // Second highest
        }
        .font(.title)
    }
}

#Preview {
    PriorityProblemSolve()
}
