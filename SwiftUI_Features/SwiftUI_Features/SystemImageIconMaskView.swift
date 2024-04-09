//
//  SystemImageIconMaskView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 08.04.2024.
//

import SwiftUI

struct SystemImageIconMaskView: View {

    @State var trigger = 0
    @State private var iconName = "bookmark.fill"

    var body: some View {

        VStack {
//            Text("Bounce")
//                .font(.largeTitle)
//                .padding(.top, 50)
//            Text("Discrete")
//
//            Spacer()
//            Image(systemName: "wifi.exclamationmark")
//                .scaleEffect(4)
//                .symbolEffect(.bounce, value: trigger)
//
//            Button("Trigger") {
//                trigger += 1
//            }
//            .padding(.top, 50)
//            Spacer()

            VStack(spacing: 20) {
                Rectangle()
                    .fill(Color.mint)
                    .frame(height: 100)
                    .mask {
                        Image(systemName: iconName)
                            .scaleEffect(5)
                            .contentTransition(.symbolEffect(.replace))
                    }
                Button {
                    withAnimation {
                        iconName = "sparkle"
                    }
                } label: {
                    Text("Sparkle")
                        .font(.title)
                }

                Button {
                    withAnimation(.snappy) {
                        iconName = "bookmark.fill"
                    }
                } label: {
                    Text("Bookmark")
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    SystemImageIconMaskView()
}
