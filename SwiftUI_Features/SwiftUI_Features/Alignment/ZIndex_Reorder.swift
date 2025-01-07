//
//  ZIndex_Reorder.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.01.2025.
//

import SwiftUI

struct ZIndex_Reorder: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Z Index").font(.largeTitle)
            Text("Reorder with zIndex").foregroundStyle(.gray)
            Text("By using using zIndex, you can move the green rectangle above the orange one.")
                .frame(maxWidth: .infinity)
                .padding().background(Color.blue)
                .foregroundStyle(.white)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.green)
                .padding(.horizontal, 50)
                .overlay(Text("1"))
                .zIndex(1) // Increase the z index to bring to front
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .padding(.horizontal, 50)
                .scaleEffect(1.5)
                .overlay(Text("2"))
            // .zIndex(-1) You can also decrease the z index
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.yellow)
                .padding(.horizontal, 50)
                .overlay(Text("3"))
        }.font(.title)
    }
}

#Preview {
    ZIndex_Reorder()
}
