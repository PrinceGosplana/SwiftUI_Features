//
//  MenuCustomizing.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.11.2024.
//

import SwiftUI

struct MenuCustomizing: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Menu {
                Button(action: {}) {
                    Text("Add color")
                    Image(systemName: "eyedropper.full")
                }
                Button(action: {}) {
                    Image(systemName: "circle.lefthalf.fill")
                    Text("Change contrast")
                }
                Button(action: {}) {
                    Text("Skew")
                    Image(systemName: "skew")
                }
            } label: {
                VStack(spacing: 16) {
                    Image(systemName: "paintbrush.pointed.fill")
                    Text("Editing Options")
                }
                .foregroundStyle(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20))
            }
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    MenuCustomizing()
}
