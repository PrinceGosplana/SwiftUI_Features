//
//  ContentShape_Solution.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 11.01.2025.
//

import SwiftUI

struct ContentShape_Solution: View {
    @State private var likes = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Content Shape").font(.largeTitle)
            Text("Solution").foregroundStyle(.gray)
            Text("To fix this, you could add a solid color RoundedRectangle as a background shape. But if you don't want to do that, then add a contentShape modifier.")
                .frame(maxWidth: .infinity)
                .padding().foregroundStyle(.white)
                .background(Color.pink)
            VStack(spacing: 20) {
                Image(systemName: likes > 0 ? "heart.fill" : "heart")
                    .foregroundStyle(likes > 0 ? .red : .gray)
                    .frame(width: 100, height: 100)
                Text("Hit me! (Likes: \(likes))")
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).stroke(Color.red, lineWidth: 1))
            .contentShape(RoundedRectangle(cornerRadius: 20))
            .onTapGesture {
                self.likes = self.likes + 1
            }
        }
        .font(.title)
    }
}

#Preview {
    ContentShape_Solution()
}
