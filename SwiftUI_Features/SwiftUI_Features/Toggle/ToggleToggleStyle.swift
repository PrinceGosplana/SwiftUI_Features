//
//  ToggleToggleStyle.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.12.2024.
//

import SwiftUI

struct ToggleToggleStyle: View {
    
    @State private var isOn = false
    @State private var toggleOn = true
    
    var body: some View {
        VStack(spacing: 20.0) {
            //    Apply the toggleStyle to your Toggle to make it look like a button with two states
            Toggle(isOn: $isOn) {
                Image(systemName: "heart")
                    .symbolVariant(isOn ? .fill : .none)
            }.padding()
            //    These examples are using the symbol variant to switch  between filled and not filled SF symbols.
            Toggle(isOn: $isOn) {
                Image(systemName: "heart")
                    .symbolVariant(isOn ? .fill : .none)
            }
            .toggleStyle(.button)
            
            Toggle(isOn: $toggleOn) {
                Image(systemName: "heart")
                    .symbolVariant(toggleOn ? .fill : .none)
            }
            .toggleStyle(.button)
        }
        .font(.title)
    }
}

#Preview {
    ToggleToggleStyle()
}
