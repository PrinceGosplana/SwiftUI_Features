//
//  NewApiScrollView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.03.2024.
//

import SwiftUI

struct NewApiScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            let colors: [Color] = [.red, .blue, .green, .yellow, .purple]
            
            LazyHStack(spacing: 0) {
                ForEach(colors, id: \.self) { color in
                    RoundedRectangle(cornerRadius: 15)
                        .fill(color.gradient)
                        .frame(height: 200)
                        .padding(.horizontal)
                        .containerRelativeFrame(.horizontal)
                }
            }
            /// step 1
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
    }
}

#Preview {
    NewApiScrollView()
}
