//
//  TapGestureWithLocation.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.08.2024.
//

import SwiftUI

struct TapGestureWithLocation: View {
    @State private var tapLocation: CGPoint = .zero
    @State private var tapGlobalLocation: CGPoint = .zero
    var body: some View {
        VStack(spacing: 20) {
            Text("Tap location x \(tapLocation.x) y \(tapLocation.y)")
                .font(.title)

            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .fill(.red)
                .frame(height: 200)
                .onTapGesture { location in
                    tapLocation = location
                }

            Text("Tap global location x \(tapGlobalLocation.x) y \(tapGlobalLocation.y)")
                .font(.title)

            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .fill(.indigo)
                .frame(height: 200)

                .onTapGesture(coordinateSpace: .global) { location in
                    tapGlobalLocation = location
                }
        }
        .padding()
    }
}

#Preview {
    TapGestureWithLocation()
}
