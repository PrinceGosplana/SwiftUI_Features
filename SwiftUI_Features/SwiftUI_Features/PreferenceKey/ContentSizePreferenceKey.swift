//
//  ContentSizePreferenceKey.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 12.10.2024.
//

import SwiftUI

struct ContentSizePreferenceKey: PreferenceKey {
    static var defaultValue: CGSize { .zero }
    
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}

struct ContentSizeChildView: View {
    @State private var contentSize: CGSize = .zero
    
    var body: some View {
        VStack(spacing: 15) {
            Text("This is a child view")
                .padding()
                .background(
                    GeometryReader { geometry in
                        Color.clear
                            .preference(
                                key: ContentSizePreferenceKey.self,
                                value: contentSize == .zero ? CGSize(width: geometry.size.width, height: geometry.size.height + 100) : contentSize
                            )
                    }
                )
            Button("Change size") {
                contentSize = CGSize(width: 140, height: 160)
            }
            .tint(.white)
        }
    }
}
struct ContentSizePreferenceKeyView: View {
    
    @State private var contentSize: CGSize = .zero
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.cyan)
                .frame(width: contentSize.width, height: contentSize.height)
            
            ContentSizeChildView()
        }
        .onPreferenceChange(ContentSizePreferenceKey.self) { value in
            withAnimation {
                contentSize = value
            }
        }
    }
}

#Preview {
    ContentSizePreferenceKeyView()
}
