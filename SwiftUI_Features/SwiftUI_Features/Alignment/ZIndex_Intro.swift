//
//  ZIndex_Intro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.01.2025.
//

import SwiftUI

struct ZIndex_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Z Index").font(.largeTitle)
            Text("Introduction").foregroundStyle(.gray)
            Text("The zIndex modifier can move views up on top of other views.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundStyle(.white)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.green)
                .padding(.horizontal, 50)
                .overlay(Text("1"))
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .padding(.horizontal, 50)
                .scaleEffect(1.5)
                .overlay(Text("2"))
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.yellow)
                .padding(.horizontal, 50)
                .overlay(Text("3"))
            Text("Here is the default order of layout index.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundStyle(.white)
        }.font(.title)
    }
}

#Preview {
    ZIndex_Intro()
}
