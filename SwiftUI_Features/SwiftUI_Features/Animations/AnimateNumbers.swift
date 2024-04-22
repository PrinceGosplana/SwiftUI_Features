//
//  AnimateNumbers.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 22.04.2024.
//

import SwiftUI

struct AnimateNumbers: View {

    @State private var number: Int = 0
    @State private var isCountDown = false

    var body: some View {
        VStack {
            HStack(spacing: 20) {

                Text("\(number)")
                    .contentTransition(.numericText(countsDown: isCountDown))
                    .font(.largeTitle)
            }
            .font(.largeTitle)
            HStack(spacing: 20) {
                Button {
                    isCountDown = false
                    withAnimation { number += 1 }
                } label: {
                    Image(systemName: "hand.thumbsup.circle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 44, height: 44)
                        .foregroundStyle(.green)
                }

                Button {
                    isCountDown = true
                    withAnimation {
                        if number > 0 { number -= 1 }
                    }
                } label: {
                    Image(systemName: "hand.thumbsdown.circle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 44, height: 44)
                        .foregroundStyle(.red)
                }
            }
        }
    }
}

#Preview {
    AnimateNumbers()
}
