//
//  StatusBarHiddenIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.01.2025.
//

import SwiftUI

struct StatusBarHiddenIntro: View {
    @State private var isOn = true
    var body: some View {
        VStack(spacing: 40) {
            Text("You use the statusBar modifier to hide or show the status bar on demand for any view.")
            Toggle(isOn: $isOn) {
                Text("Status Bar Hidden")
                Image(systemName: isOn ? "eye.slash" : "eye")
                    .foregroundStyle(.pink)
            }
            .padding()
        }
        .font(.title)
        // Include this modifier anywhere in your view
        .statusBar(hidden: isOn)
        //    When true, there will be no status bar at the top of the screen.
    }
}

#Preview {
    StatusBarHiddenIntro()
}
