//
//  BasicAnimationView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 01.10.2024.
//

import SwiftUI

struct BasicAnimationView: View {

    @State private var isOn = false

    // Keyframe
    struct Value {
        var opacity: Double
        var trim: Double
    }
    let offState = Value(opacity: 0.1, trim: 0)
    let onState = Value(opacity: 1, trim: 1)

    var body: some View {
        /// Basic

        ZStack {
            Circle()
                .stroke(.tertiary, lineWidth: 5)
            Circle()
                .trim(from: 0, to: isOn ? 1 : 0)
                .stroke(.red, lineWidth: 5)
        }
        .contentShape(Circle())
        .animation(.default, value: isOn)
        .onTapGesture {
            isOn.toggle()
        }
        .frame(width: 200, height: 200)

    }
}

#Preview {
    BasicAnimationView()
}
