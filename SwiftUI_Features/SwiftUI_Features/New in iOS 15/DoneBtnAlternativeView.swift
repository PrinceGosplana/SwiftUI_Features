//
//  DoneBtnAlternativeView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 25.08.2024.
//

import SwiftUI

struct DoneBtnAlternativeView: View {
    var body: some View {
        TextField("Tap on me", text: .constant(""))
            .textFieldStyle(.roundedBorder)
            .submitLabel(.search)
            .padding()
    }
}

#Preview {
    DoneBtnAlternativeView()
}
