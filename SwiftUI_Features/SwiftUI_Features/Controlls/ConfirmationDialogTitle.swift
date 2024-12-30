//
//  ConfirmationDialogTitle.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 30.12.2024.
//

import SwiftUI

struct ConfirmationDialogTitle: View {
    @State private var add = false
    var body: some View {
        VStack(spacing: 20.0) {
            Text("Add the titleVisibility parameter to show/hide the title. By default, it is set to automatic which may or may not show it.")
            Button("Add") {
                add.toggle()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            Spacer()
        }
        .font(.title)
        .confirmationDialog("Add to:", isPresented: $add, titleVisibility: .visible) {
            Button("Family") { }
            Button("Friends") { }
            Button("Work") { }
            Button("The Devil's Circle of Hell", role: .destructive) { }
        }
    }
}

#Preview {
    ConfirmationDialogTitle()
}
