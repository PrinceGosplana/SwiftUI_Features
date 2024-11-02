//
//  MenuMenuPosition.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.11.2024.
//

import SwiftUI

struct MenuMenuPosition: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Menu {
                    Button(action: {}) {
                        Text("Menu Item 1")
                        Image(systemName: "network")
                    }
                    Button(action: {}) {
                        Text("Menu Item 2")
                        Image(systemName: "antenna.radiowaves.left.and.right")
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
    MenuMenuPosition()
}
