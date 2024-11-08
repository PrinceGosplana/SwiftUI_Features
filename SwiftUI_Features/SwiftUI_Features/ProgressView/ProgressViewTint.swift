//
//  ProgressViewTint.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.11.2024.
//

import SwiftUI

struct ProgressViewTint: View {
    @State private var progress = 0.75
    var body: some View {
        VStack(spacing: 20) {
            Text("Starting in iOS 15, you can use the tint modifier to change the color of the progress views.")
            ProgressView(value: progress, label: {
                HStack {
                    Spacer()
                    Text("Progress (\(Int(progress * 100))%)")
                        .font(.title)
                        .foregroundStyle(.white)
                    Spacer()
                }
            })
            .tint(.mint)
            .padding()
            .background(RoundedRectangle(cornerRadius: 16)
                .fill(Color("GoldColor"))
                .shadow(radius: 10, y: 16))
            .padding(.horizontal)
            Text("For the circular progress view, you need to set the color through the style modifier:")
                .padding(.horizontal)
            ProgressView()
                .tint(.red)
        }
        .font(.title)
    }
}

#Preview {
    ProgressViewTint()
}
