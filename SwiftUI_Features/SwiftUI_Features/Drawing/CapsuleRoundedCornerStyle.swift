//
//  CapsuleRoundedCornerStyle.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.12.2024.
//

import SwiftUI

struct CapsuleRoundedCornerStyle: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Capsule")
                .font(.largeTitle)
            Text("Rounded Corner Style")
                .foregroundStyle(.gray)
            Text("The Capsule shape offers two different styles for its rounded corners:")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundStyle(Color.white)
            Text("RoundedCornerStyle.circular")
            Capsule(style: RoundedCornerStyle.circular)
                .padding()
            Text("RoundedCornerStyle.continuous")
            Capsule(style: RoundedCornerStyle.continuous)
                .padding()
        }
        .font(.title)
    }
}

#Preview {
    CapsuleRoundedCornerStyle()
}
