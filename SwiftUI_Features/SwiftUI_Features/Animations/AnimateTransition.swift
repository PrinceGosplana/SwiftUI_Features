//
//  AnimateTransition.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 14.07.2024.
//

import SwiftUI

struct AnimateTransition: View {

    @State var show = false

    var body: some View {
        ZStack {
            Rectangle()

            Group {
                Circle()
                    .frame(width: show ? 400 : 25, height: show ? 400 : 25)
                    .foregroundStyle(.mint)

                Image(systemName: show ? "checkmark.circle.fill" : "")
                    .font(.system(size: 25))
                    .foregroundStyle(show ? .blue : .white)
                /// symbolEffect from iOS 17+
//                    .contentTransition(.symbolEffect)
            }
            .offset(x: 50, y: -50)
        }
        .frame(width: 150, height: 150)
        .clipShape(.rect(cornerRadius: 20))
        .contentShape(Rectangle())
        .onTapGesture {
            withAnimation {
                show.toggle()
            }
        }
    }
}

#Preview {
    AnimateTransition()
}
