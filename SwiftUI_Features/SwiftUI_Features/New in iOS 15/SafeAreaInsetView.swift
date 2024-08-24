//
//  SafeAreaInsetView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 24.08.2024.
//

import SwiftUI

/// A new view that is displayed above, below, leading or trailing of the content view, making space for the content view either horizontally or vertically

struct SafeAreaInsetView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 18) {
                ForEach(1...25, id: \.self) { _ in
                    HStack(spacing: 10) {
                        Circle()
                            .fill(.gray)
                            .frame(width: 45, height: 45)

                        VStack(alignment: .leading, spacing: 15) {
                            Rectangle()
                                .fill(.gray)
                                .frame(height: 10)

                            Rectangle()
                                .fill(.gray)
                                .frame(height: 10)
                                .padding(.trailing, 50)
                        }
                    }
                }
            }
            .padding()
        }
        /// It will automatically add padding for the main content
        .safeAreaInset(edge: .bottom) {
            Capsule()
                .fill(.indigo)
                .frame(height: 55)
                .padding(.horizontal)
        }
    }
}

#Preview {
    SafeAreaInsetView()
}
