//
//  SafeAreaInset.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.10.2024.
//

import SwiftUI

struct SafeAreaInset: View {
    var body: some View {
        VStack(spacing: 0) {
            
            List {
                ForEach(1..<21) { number in
                    Text("\(number)")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.green, in: RoundedRectangle(cornerRadius: 10))
                }
            }
            .listStyle(.plain)
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
    SafeAreaInset()
}
