//
//  OtherViewsWithin.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.11.2024.
//

import SwiftUI

struct OtherViewsWithin: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Menu {
                    Button("Menu Item 1", action: {})
                    Divider()
                    Button(action: {}) {
                        Text("Dividers create a thicker separator")
                        Image(systemName: "hand.point.up")
                    }
                    Divider()
                    Text("This is a text view")
                        .font(.caption) // No effect
                        .textCase(.uppercase)
                    Button(action: {}) {
                        Text("Menu text will use up to two lines if too long.")
                        Image(systemName: "paperplane")
                    }
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .padding(.leading, 20)
                }
                Spacer()
            }
            Spacer()
            
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    OtherViewsWithin()
}
