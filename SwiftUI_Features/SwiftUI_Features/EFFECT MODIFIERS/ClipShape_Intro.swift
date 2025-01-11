//
//  ClipShape_Intro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 11.01.2025.
//

import SwiftUI

struct ClipShape_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("ClipShape").font(.largeTitle)
            Text("Introduction").font(.title).foregroundStyle(.gray)
            Text("Only show the part of the view that the shape covers.")
            Text("Original")
            Image("profile")
            Text("Clipped")
            HStack(spacing: 60) {
                Image("profile")
                    .clipShape(Circle())
                Image("profile")
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }.padding(.bottom, 40)
            Button(action: {}) {
                Text("Explore")
                    .bold()
                    .font(.title)
                    .foregroundStyle(.white)
                    .shadow(color: .black, radius: 5, x: 0, y: 0)
            }
            .frame(width: 200, height: 75)
            .background(Image("yosemite")
                .clipShape(Capsule()))
        }
    }
}

#Preview {
    ClipShape_Intro()
}
