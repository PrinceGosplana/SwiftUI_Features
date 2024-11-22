//
//  FontLayoutPriority.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.11.2024.
//

import SwiftUI

struct FontLayoutPriority: View {
    var body: some View {
        VStack {
            Text("Text")
                .font(.largeTitle)
            
            Text("Layout Priority")
                .font(.title)
                .foregroundStyle(.gray)

            Text("Layout priority controls which view will get truncated last. The higher the priority, the last it is in line to get truncated.")
                .font(.title)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .layoutPriority(2) // Highest priority to get the space it needs
            
            Text("This text gets truncated first because it has no priority.")
                .font(.title)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.pink)
            
            Text("The text view above got truncated because its layout priority is zero (the default). This text view has a priority of 1. The text view on top has a priority of 2.")
                .font(.title)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .layoutPriority(1)
        }
    }
}

#Preview {
    FontLayoutPriority()
}
