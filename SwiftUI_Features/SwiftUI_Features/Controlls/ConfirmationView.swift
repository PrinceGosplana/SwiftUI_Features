//
//  ConfirmationView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.01.2025.
//

import SwiftUI

struct ToolbarOnSheet: View {
    @State private var presentingSheet = false
    var body: some View {
        Button("Show Sheet") {
            presentingSheet = true
//            The toolbar modifier will place items differently on a  sheet depending on the placement parameter.
        }
        .sheet(isPresented: $presentingSheet) {
            ConfirmationView()
        }
        .font(.title)
    }
}

struct ConfirmationView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
            }
            .padding(.top)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Confirm", action: { dismiss() })
                }
                ToolbarItem(placement: .destructiveAction) {
                    Button("Delete", action: { dismiss() })
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel", action: { dismiss() })
                }
            }
        }
        //    The platform will handle the order in which the buttons appear and the text styling.
    }
}

#Preview {
    ToolbarOnSheet()
}
