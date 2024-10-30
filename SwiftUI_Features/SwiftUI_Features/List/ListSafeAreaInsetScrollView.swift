//
//  ListSafeAreaInsetScrollView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 30.10.2024.
//

import SwiftUI

struct ListSafeAreaInsetScrollView: View {
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                //        Change List to
                //        ScrollView.
                ForEach(1..<21) { number in
                    Text("\(number)")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.green, in: RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding(.horizontal)
            .safeAreaInset(edge: .bottom) {
                VStack {
                    Divider()
                    Text("Total: 20")
                        .foregroundStyle(.secondary)
                }
                .background(.bar)
            }
        }
        .font(.title)
    }
}

#Preview {
    ListSafeAreaInsetScrollView()
}
