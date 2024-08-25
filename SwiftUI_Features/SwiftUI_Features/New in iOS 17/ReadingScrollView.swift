//
//  ReadingScrollView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.03.2024.
//

import SwiftUI

struct ReadingScrollView: View {
    @State private var scrollPosition: Color?
    var body: some View {
        GeometryReader{
            let size = $0.size
            
            ScrollView(.horizontal) {
                let colors: [Color] = [.red, .blue, .green, .yellow, .purple]
                
                LazyHStack(spacing: 25) {
                    ForEach(colors, id: \.self) { color in
                        RoundedRectangle(cornerRadius: 15)
                            .fill(color.gradient)
                            .frame(width: 300, height: 200)
                    }
                }
                .padding(.horizontal, (size.width - 300) / 2)
                /// step 1
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.viewAligned)
            .scrollPosition(id: $scrollPosition)
        }
        .frame(height: 200)
        .overlay(alignment: .bottom) {
            Button("Scroll to yellow") {
                withAnimation(.snappy) {
                    scrollPosition = .yellow
                }
            }
            .offset(y: 100)
        }
    }
}

#Preview {
    ReadingScrollView()
}
