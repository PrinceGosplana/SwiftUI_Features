//
//   SheetSwipeDisabled.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.01.2025.
//

import SwiftUI

struct SheetSwipeDisabled: View {
    @State private var presentingSheet = false
    var body: some View {
        Button("Show Sheet") {
            presentingSheet = true
        }
        .sheet(isPresented: $presentingSheet) {
            SheetView(title: "Sheet",
                      subtitle: "Swipe Down Disabled")
        }
        .font(.title)
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    let title: String
    let subtitle: String
    var body: some View {
        VStack(spacing: 20) {
            Text("Add the interactiveDismissDisabled modifier to prevent swiping down to dismiss on the sheet.")
                .padding(.top)
            Spacer()
            Button("Dismiss") {
                dismiss()
            }
            .tint(.red)
            .padding(.bottom)
        }
        //Prevent the user from swiping down to dismiss sheet.
        .interactiveDismissDisabled()
    }
}

#Preview {
    SheetSwipeDisabled()
}
