//
//  ButtonRepeatBehaviorView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.10.2024.
//

import SwiftUI

struct ButtonRepeatBehaviorView: View {
    
    @State private var buttonPressedCount = 0
    
    var body: some View {
        HStack(spacing: 60.0) {
            Button("-") {
                buttonPressedCount -= 1
            }
            .buttonRepeatBehavior(.enabled)
            
            Text(buttonPressedCount, format: .number)
            
            Button("+", systemImage: "x.circle") {
                buttonPressedCount += 1
            }
            .buttonRepeatBehavior(.enabled)
        }
        .buttonStyle(.borderedProminent)
        .font(.title)
    }
}

#Preview {
    ButtonRepeatBehaviorView()
}
