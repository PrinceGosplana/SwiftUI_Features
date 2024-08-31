//
//  NewButtonCustomizationView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 31.08.2024.
//

import SwiftUI

struct NewButtonCustomizationView: View {

    @State var isOn = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Button { } label: { Text("Bordered") }
                .buttonStyle(.bordered)
                // Large size
                .controlSize(.large)
                // Change tint
                .tint(.purple)

                Button { } label: { Text("BorderedProminent") }
                    .buttonStyle(.borderedProminent)
                // Large size
                .controlSize(.large)
                // Change tint
                .tint(.purple)

                Button { } label: { Text("Borderless") }
                    .buttonStyle(.borderless)
                // Large size
                .controlSize(.large)
                // Change tint
                .tint(.cyan)

                Button { } label: { Text("Bordered") }
                    .buttonStyle(.plain)
                // Large size
                .controlSize(.large)
                // Change tint
                .tint(.mint)

                Toggle(isOn: $isOn) {
                    Image(systemName: "star.fill")
                }
                // Button style
                .toggleStyle(.button)
                // Can be changed controlsize
                .controlSize(.large)
                .tint(.indigo)

                Text("Hello")
                    .navigationTitle("Home")
                    .toolbar {
                        ToolbarItem (placement: .topBarTrailing) {
                            ControlGroup {
                                Button {} label: {
                                    Image(systemName: "person")
                                }

                                Button {} label: {
                                    Image(systemName: "gear")
                                }
                            }
                            .controlGroupStyle(.navigation)
                        }
                    }
            }
        }
    }
}

#Preview {
    NewButtonCustomizationView()
}
