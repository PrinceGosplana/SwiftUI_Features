//
//  BasicAnimationView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 01.10.2024.
//

import SwiftUI

struct TimeLineAnimationView: View {

    @State private var isOn = false

    var body: some View {

        /// Time line animation
        Image(systemName: "heart")
            .symbolVariant(.fill)
            .foregroundStyle(.red)
            .font(.system(size: 80))
            .modifier(ParticleModifier())
    }
}

struct ParticleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background {
                Canvas { ctx, size in
                    ctx.fill(Path(CGRect(origin: .zero, size: size)), with: .foreground)
                    let heart = ctx.resolveSymbol(id: "particle")!
//                    ctx.translateBy(x: size.width / 2, y: size.height / 2)
                    ctx.draw(heart, at: .init(x: 50, y: 50))
                } symbols: {
                    content.tag("particle")
                }
                .frame(width: 300, height: 300)
            }
    }
}

#Preview {
    TimeLineAnimationView()
}
