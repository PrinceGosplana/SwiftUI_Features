//
//  ToolbarOnKeyboard.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.01.2025.
//

import SwiftUI

struct ToolbarOnKeyboard: View {
    @State private var text = ""
    var body: some View {
        //    You can add buttons above the keyboard with the ToolbarItemGroup and a placement of 'keyboard'.
        VStack(spacing: 20.0) {
            TextField("add name", text: $text)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
        .font(.title)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button(action: { }) {
                    Image(systemName: "questionmark.square")
                }
                .tint(.green)
            }
        }
    }
}

#Preview {
    ToolbarOnKeyboard()
}
