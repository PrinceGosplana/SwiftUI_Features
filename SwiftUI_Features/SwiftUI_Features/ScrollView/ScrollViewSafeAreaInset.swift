//
//  ScrollViewSafeAreaInset.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 09.11.2024.
//

import SwiftUI

struct ScrollViewSafeAreaInset: View {
    @State private var names = ["Scott", "Mark", "Chris", "Sean", "Rod", "Meng", "Natasha",
                                "Chase", "Evans", "Paul", "Durtschi", "Max"]
    var body: some View {
        ScrollView {
            ForEach(names, id: \.self) { name in
                HStack {
                    Text(name)
                        .foregroundStyle(.primary)
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundStyle(.green)
                    Spacer()
                }
                .padding()
                .background(Color.white.shadow(.drop(radius: 1, y: 1)),
                            in: RoundedRectangle(cornerRadius: 8))
            }
            .padding(.horizontal)
        }
        .safeAreaInset(edge: .bottom) {
            //    The rows will scroll behind the safe area inset but
            //    when you get to the bottom, the last row will show
            //    completely outside of it.
            VStack(spacing: 20) {
                Divider()
                Text("12 People")
            }
            .background(.regularMaterial)
        }
        .font(.title)
    }
}

#Preview {
    ScrollViewSafeAreaInset()
}
