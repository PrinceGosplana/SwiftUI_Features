//
//  FontAlignment.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.11.2024.
//

import SwiftUI

struct FontAlignment: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text").font(.largeTitle)
            Text("Multiline Text Alignment").foregroundStyle(.gray)
            Image("MultilineTextAlignment")
            Text("By default, text will be centered within the screen. But when it wraps to multiple lines, it will be leading aligned by default. Use multilineTextAlignment modifier to change this!")
            Text(".multilineTextAlignment(.center)")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundStyle(.white)
                .background(Color.green)
            Text("Have I told you how awesome I think you are?")
                .multilineTextAlignment(.center) // Center align
                .padding(.horizontal)
            
            Text(".multilineTextAlignment(.trailing)")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundStyle(.white)
                .background(Color.green)
                .allowsTightening(true) // Prevent truncation
            Text("You are SUPER awesome for improving your skills by using this book!")
                .multilineTextAlignment(.trailing) // Trailing align
                .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    FontAlignment()
}
