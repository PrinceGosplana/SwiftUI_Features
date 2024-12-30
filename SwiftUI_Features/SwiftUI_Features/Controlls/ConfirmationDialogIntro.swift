//
//  ConfirmationDialogIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 30.12.2024.
//

import SwiftUI

struct ConfirmationDialogIntro: View {
    @State private var delete = false
    var body: some View {
        VStack(spacing: 20.0) {
            Text( "Use the confirmation dialog to get feedback from the user.")
            Button("Delete", role: .destructive) {
                delete.toggle()
            }
            //    Present with a boolean.
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            Spacer()
        }
        .font(.title)
        .confirmationDialog("Are you sure you want to delete?", isPresented: $delete) {
            // Add buttons here
            Button("Delete", role: .destructive) { }
        }
    }
}

#Preview {
    ConfirmationDialogIntro()
}
