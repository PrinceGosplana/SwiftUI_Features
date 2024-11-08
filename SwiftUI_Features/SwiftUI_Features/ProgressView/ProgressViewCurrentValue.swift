//
//  ProgressViewCurrentValue.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.11.2024.
//

import SwiftUI

struct ProgressViewCurrentValue: View {
    @State private var progress = 0.2
    @State private var current = 20
    @State private var total = 100
    var body: some View {
        VStack(spacing: 40) {
            
            ProgressView(value: progress, label: {
                Text("Fetching Records")
            }, currentValueLabel: {
                Text("\(current) out of \(total)")
            })
            .padding()
            
            Text("Allows customizations:")
            
            ProgressView(value: progress, label: {
                Text("Fetching Records")
            }, currentValueLabel: {
                Text("\(current) out of \(total)")
                    .font(.title3)
                    .italic()
                    .foregroundStyle(.green)
            })
            .padding()
        }
        .font(.title)
    }
}

#Preview {
    ProgressViewCurrentValue()
}
