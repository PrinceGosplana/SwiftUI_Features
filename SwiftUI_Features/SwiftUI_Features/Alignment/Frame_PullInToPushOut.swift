//
//  Frame_PullInToPushOut.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.01.2025.
//

import SwiftUI

struct Frame_PullInToPushOut: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Frame").font(.largeTitle)
            Text("Max Sizes").foregroundStyle(.gray)
            Text("Using .infinity is a great way to turn pull-in views into push-out views.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.pink).foregroundStyle(.white)
            Text("Pull-In View")
            Image(systemName: "arrow.right.arrow.left")
                .padding()
                .background(Color.pink)
            Text("Now a Push-Out View")
            Image(systemName: "arrow.right.arrow.left")
                .padding()
            // Using .infinity for max width and height makes this a push-out view now
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.pink)
        }
        .font(.title)
    }
}

#Preview {
    Frame_PullInToPushOut()
}
