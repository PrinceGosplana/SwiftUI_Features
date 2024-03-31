//
//  StaticGridExampleView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 31.03.2024.
//

import SwiftUI

struct StaticGridExampleView: View {

    @State private var isOn = false

    var body: some View {
        Grid(horizontalSpacing: 30, verticalSpacing: 30) {
            GridRow {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.pink.gradient)
                    .frame(width: 100, height: 100)

                VStack {
                    Circle()
                        .foregroundStyle(.secondary)
                        .frame(width: 60, height: 60)

                    Text("Oleks")
                }

                VStack {
                    Button("Tap Me") {

                    }
                    .buttonStyle(.borderedProminent)

                    Toggle("Volume", isOn: $isOn)
                        .labelsHidden()
                }
            }

            GridRow {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.teal.gradient)
                    .frame(height: 200)
                    .gridCellColumns(1)
            }
        }
        .padding()
    }
}

#Preview {
    StaticGridExampleView()
}
