//
//  BasicAnimationView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 01.10.2024.
//

import SwiftUI

struct PhaseAnimationView: View {

    @State private var isOn = false

    var body: some View {

        PhaseAnimator([false, true], trigger: isOn) { active in
            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .fill(isOn ? .red : .gray)
                .rotationEffect(.degrees(active ? 10 : 0))
                .scaleEffect(active ? 1.85 : 1)
                .offset(x: active ? 50 : 0, y: active ? -50 : 0)
        }
        .frame(width: 150, height: 100)
        .animation(.default, value: isOn)
        .onTapGesture {
            isOn.toggle()
        }
        .frame(width: 250, height: 200)


    }
}

#Preview {
    BasicAnimationView()
}
