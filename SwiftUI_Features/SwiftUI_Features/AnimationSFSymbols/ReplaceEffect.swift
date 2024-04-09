//
//  ReplaceEffect.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 09.04.2024.
//

import SwiftUI

struct ReplaceEffect: View {

    @State var isPaused = false

    var body: some View {
        VStack {
            ExtractedView(title: "Replace", subtitle: "Content Transition")

            Spacer()
            HStack(spacing: 80) {

                VStack(spacing: 50) {

                    Image(systemName: isPaused ? "pause.fill" : "play.fill")
                        .scaleEffect(3)
                        .contentTransition(.symbolEffect(.replace))

                    Button(isPaused ? "Play" : "Pause") {
                        isPaused.toggle()
                    }
                }
            }
            .frame(minWidth: 100, maxWidth: 250)

            Spacer()
        }
    }
}

#Preview {
    ReplaceEffect()
}
