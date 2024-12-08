//
//  ToggleColor.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.12.2024.
//

import SwiftUI

struct ToggleColor: View {
    @State private var isToggleOn = true
    var body: some View {
        VStack(spacing: 40) {
            //    You can change the color of the Toggle through the SwitchToggleStyle
            Group {
                Toggle(isOn: $isToggleOn) {
                    Text("Red")
                    Image(systemName: "paintpalette")
                }
                .toggleStyle(SwitchToggleStyle(tint: Color.red))

                Toggle(isOn: $isToggleOn) {
                    Text("Orange")
                    Image(systemName: "paintpalette")
                }
                .toggleStyle(SwitchToggleStyle(tint: Color.orange))
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    ToggleColor()
}
