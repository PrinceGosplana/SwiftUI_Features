//
//  KeyframeAnimationView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 10.03.2024.
//

import SwiftUI

struct KeyframeAnimationView: View {
    @State private var startKeyframeAnimation: Bool = false
    var body: some View {
        VStack {
            Spacer()
            
            Image(.xcode)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            Spacer()
            
            Button("Keyframe animation") {
                startKeyframeAnimation.toggle()
            }
            .fontWeight(.bold)
            
        }
    }
}

#Preview {
    KeyframeAnimationView()
}
