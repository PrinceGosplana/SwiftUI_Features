//
//  SpanView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.10.2024.
//

import SwiftUI

struct SpanView: View {
    let colors: [Color] = [.green, .cyan, .purple, .mint, .orange]
    
    var body: some View {
        VStack(spacing: 8) {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(colors, id: \.self) { color in
                        color.containerRelativeFrame(.horizontal, count: 5, span: 5, spacing: 8)
                    }
                }
            }
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(colors, id: \.self) { color in
                        color.containerRelativeFrame(.horizontal, count: 5, span: 3, spacing: 8)
                    }
                }
            }
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(colors, id: \.self) { color in
                        color.containerRelativeFrame(.horizontal, count: 5, span: 2, spacing: 8)
                    }
                }
            }
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(colors, id: \.self) { color in
                        color.containerRelativeFrame(.horizontal, count: 5, span: 1, spacing: 8)
                    }
                }
            }
        }
    }
}

#Preview {
    SpanView()
}
