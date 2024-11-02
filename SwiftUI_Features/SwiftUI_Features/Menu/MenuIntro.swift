//
//  MenuIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.11.2024.
//

import SwiftUI

struct MenuIntro: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Menu("💡 Edit") {
                ControlGroup {
                    Button("Add color", systemImage: "eyedropper.full") { }
                    Button("Change Contrast", systemImage: "circle.lefthalf.fill") { }
                }
                Button("Erase", systemImage: "eraser.fill") { }
                Button("Scribble Tool", systemImage: "scribble.variable") { }
            }
            Spacer()
            
        }
        .font(.title)
    }
}

#Preview {
    MenuIntro()
}
