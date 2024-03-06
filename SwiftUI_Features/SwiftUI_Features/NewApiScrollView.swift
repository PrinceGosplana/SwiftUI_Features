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
            
            LazyHStack(spacing: 25) {
                ForEach(colors, id: \.self) { color in
                    RoundedRectangle(cornerRadius: 15)
                        .frame(height: 200)
                        .containerRelativeFrame(.horizontal)
                }
            }
        }
    }
}

#Preview {
    NewApiScrollView()
}
