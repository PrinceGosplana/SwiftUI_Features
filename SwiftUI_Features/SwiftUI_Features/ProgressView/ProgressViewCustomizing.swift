//
//  ProgressViewCustomizing.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.11.2024.
//

import SwiftUI

struct ProgressViewCustomizing: View {
    @State private var progress = 0.75
    var body: some View {
        VStack(spacing: 20) {
            
            Text("You can set the color of the progress indicator with an accent color and the text that goes with it by using a different initializer.")
                .padding()
            
            ProgressView(value: progress, label: {
                HStack {
                    Spacer()
                    Text("Progress (\(Int(progress * 100))%)")
                        .font(.title)
                        .foregroundStyle(.white)
                    Spacer()
                }
            })
            .padding()
            .background(RoundedRectangle(cornerRadius: 16)
                .fill(Color.blue)
                .shadow(radius: 10, y: 16))
            .padding(.horizontal)
            Text("For the circular progress view, you need to set the color through the stylemodifier:")
                .padding(.horizontal)
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .orange))
        }
        .font(.title)
    }
}

#Preview {
    ProgressViewCustomizing()
}
