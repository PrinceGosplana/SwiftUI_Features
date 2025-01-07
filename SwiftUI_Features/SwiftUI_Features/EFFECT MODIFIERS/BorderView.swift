//
//  BorderView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.01.2025.
//

import SwiftUI

struct BorderView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Border")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundStyle(.gray)
            Text("You can add a border to most views.")
            Text("Default border width is 1")
                .font(.title)
            Button(action: {}) {
                Text("Border around a Button")
                    .padding()
            }.border(Color.red)
            Text("Border around Text")
                .padding()
                .border(Color.red, width: 5)
            Image(.coffee)
                .border(Color.red, width: 10)
            Circle()
                .frame(width: 70, height: 70)
                .border(Color.red)
            Text("Notice the border on shapes goes around the border of the frame, not the shape itself. For shapes you need to use stroke or strokeBorder modifiers.")
        }
    }
}

#Preview {
    BorderView()
}
