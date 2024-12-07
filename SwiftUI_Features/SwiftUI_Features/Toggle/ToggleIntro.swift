//
//  ToggleIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.12.2024.
//

import SwiftUI

struct ToggleIntro: View {
    @State private var isToggleOn = true
    var body: some View {
        VStack(spacing: 10) {
            //    The Toggle is a 'push-out view' that only pushes out to fill the width of its parent view
            Toggle("Night Mode", isOn: $isToggleOn)
                .padding()
                .accentColor(Color.red)
            
            Text("Combine images with text")
            Toggle(isOn: $isToggleOn) {
                Text("Night Mode")
                Image(systemName: "moon")
                //    Note: Using accentColor directly on a Toggle does not affect its color.
            }
            .padding()
            Text("Or you can have nothing")
            VStack {
                Text("Turn Alarm On?")
                    .foregroundStyle(.white)
                Toggle("Turn this alarm on", isOn: $isToggleOn)
                    .labelsHidden() // Hides the label/title
            }
            .padding(25)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .font(.title)
    }
}

#Preview {
    ToggleIntro()
}
