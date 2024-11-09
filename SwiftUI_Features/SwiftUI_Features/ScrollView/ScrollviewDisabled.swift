//
//  ScrollviewDisabled.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 09.11.2024.
//

import SwiftUI

struct ScrollviewDisabled: View {
    @State private var disableScroll = false
    var items = [Color.green, Color.blue, Color.purple, Color.pink,
                 Color.yellow, Color.orange]
    
    var body: some View {
        ScrollView(showsIndicators: true) {
            ForEach(items, id: \.self) { item in
                RoundedRectangle(cornerRadius: 15)
                    .fill(item)
                    .frame(height: 200)
                    .padding(.horizontal)
            }
        }
        .scrollDisabled(disableScroll)
        .safeAreaInset(edge: .bottom) {
            //    You can disable scrolling
            //    with a modifier that
            //    passes in a boolean.
            Toggle("Disable Scrolling", isOn: $disableScroll)
                .padding()
                .background(.regularMaterial)
        }
        .font(.title)
    }
}

#Preview {
    ScrollviewDisabled()
}
