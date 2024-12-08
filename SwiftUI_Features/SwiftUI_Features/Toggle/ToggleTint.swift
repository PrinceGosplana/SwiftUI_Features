//
//  ToggleTint.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.12.2024.
//

import SwiftUI

struct ToggleTint: View {
    @State private var isToggleOn = true
    var body: some View {
        VStack(spacing: 40) {
            //    Starting in iOS 15, you can use the tint modifier to change the color
            Group {
                Toggle(isOn: $isToggleOn) {
                    Text("Red")
                    Image(systemName: "paintpalette")
                }
                .tint(.red)
                
                Toggle(isOn: $isToggleOn) {
                    Text("Orange")
                    Image(systemName: "paintpalette")
                }
                .tint(.orange)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    ToggleTint()
}
