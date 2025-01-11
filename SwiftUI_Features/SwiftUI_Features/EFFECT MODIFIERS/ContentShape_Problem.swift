//
//  ContentShape_Problem.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 11.01.2025.
//

import SwiftUI

struct ContentShape_Problem: View {
    @State private var likes = 0
    var body: some View {
        VStack(spacing: 20) {
            Text("Content Shape").font(.largeTitle)
            Text("Problem").foregroundStyle(.gray)
            Text("Sometimes you want to increase the size of a tappable area around content. You can use the contentShape modifier to do this.")
                .frame(maxWidth: .infinity)
                .padding().foregroundStyle(.white)
                .background(Color.pink)
            Text("In this example, I want users to tap anywhere inside the red border to ctivate the onTapGesture. But right now it will ONLY work if they tap on content (heart, text).")
                .padding()
            VStack(spacing: 20) {
                Image(systemName: likes > 0 ? "heart.fill" : "heart")
                    .foregroundStyle(likes > 0 ? .red : .gray)
                    .frame(width: 100, height: 100)
                Text("Hit me! (Likes: \(likes))")
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).stroke(Color.red, lineWidth: 1))
            .onTapGesture {
                self.likes = self.likes + 1
            }
        }
        .font(.title)
    }
}

#Preview {
    ContentShape_Problem()
}
