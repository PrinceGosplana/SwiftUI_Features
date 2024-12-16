//
//  DividerCusomization.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 16.12.2024.
//

import SwiftUI

struct DividerCusomization: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Divider").font(.largeTitle)
            Text("Customization").font(.title).foregroundStyle(.gray)
            Text("You can change the colors of Dividers using the background modifier")
            Text("Red")
            Divider().background(Color.red)
            Text("Blue")
            Divider().background(Color.blue)
            Text("You can also change the size (but not the thickness) of a Divider")
                .frame(maxWidth: .infinity).padding()
                .background(Color.green).foregroundStyle(Color.white)
                .font(.title)
            HStack {
                Divider().frame(height: 40)
                Text("When vertical, you change the height")
                Divider().frame(height: 40)
            }
            Group {
                Divider().frame(width: 300)
                Text("When horizontal, you change the width")
                Divider().frame(width: 300)
            }
        }
    }
}

#Preview {
    DividerCusomization()
}
