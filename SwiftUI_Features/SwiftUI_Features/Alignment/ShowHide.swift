//
//  ShowHide.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.01.2025.
//

import SwiftUI

struct OrangeRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundStyle(.orange)
    }
}

struct ShowHide: View {
    @State private var showShapes = false
    var body: some View {
        VStack(spacing: 10) {
            if showShapes {
                OrangeRectangle()
                    .overlay(Text("Showing hidden shape")
                        .foregroundStyle(.black))
            } else {
                OrangeRectangle()
                    .hidden()
                    .overlay(Text("This shape is hidden but it is still occupying space"))
            }
            OrangeRectangle()
            OrangeRectangle()
            Button(action: {
                self.showShapes.toggle()
            }) {
                Text("Show/Hide View")
            }
        }
    }
}

#Preview {
    ShowHide()
}
