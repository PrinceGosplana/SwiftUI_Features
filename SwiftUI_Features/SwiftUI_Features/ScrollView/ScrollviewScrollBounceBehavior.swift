//
//  ScrollviewScrollBounceBehavior.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 09.11.2024.
//

import SwiftUI

struct ScrollviewScrollBounceBehavior: View {
    var body: some View {
        VStack(spacing: 24.0) {
            GroupBox {
                ScrollView {
                    Text("The ScrollView will bounce by default")
                }
                .frame(maxWidth: .infinity)
            }
            GroupBox {
                ScrollView {
                    Text("This ScrollView will only bounce when contents exceed bounds")
                }
                .frame(maxWidth: .infinity)
                .scrollBounceBehavior(.basedOnSize)
            }
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    ScrollviewScrollBounceBehavior()
}
