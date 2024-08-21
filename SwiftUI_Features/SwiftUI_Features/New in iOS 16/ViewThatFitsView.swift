//
//  ViewThatFitsView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.08.2024.
//

import SwiftUI

struct ViewThatFitsView: View {
    var body: some View {
        /// It's often used for adopting views between custom screen sizes
        VStack {
            CustomView()
                .frame(width: 100)

            CustomView()
                .frame(width: 50)

            CustomView()
                .frame(width: 150)
        }
    }

    @ViewBuilder
    private func CustomView() -> some View {
        ViewThatFits(in: .horizontal) {
            // First View
            HStack {
                Rectangle()
                    .frame(width: 100, height: 100)
                Text("Bar")
            }

            // Second view
            Rectangle()
                .frame(width: 80, height: 10)
            // Third view
            Text("Bar")
        }
    }
}

#Preview {
    ViewThatFitsView()
}
