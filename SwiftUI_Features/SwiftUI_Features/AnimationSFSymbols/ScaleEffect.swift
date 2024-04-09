//
//  ScaleEffect.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 09.04.2024.
//

import SwiftUI

struct ScaleEffect: View {

    @State var isActive = false

    var body: some View {
        VStack {
            ExtractedView(title: "Scale", subtitle: "Indefinite")

            Spacer()

                VStack(spacing: 50) {

                    Image(systemName: "wifi")
                        .scaleEffect(4)
                        .symbolEffect(.scale.down, isActive: isActive)

                    Button(isActive ? "Active" : "Inactive") {
                        isActive.toggle()
                    }
                    
                }
            Spacer()
        }
    }
}

#Preview {
    ScaleEffect()
}
