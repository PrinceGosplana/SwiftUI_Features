//
//  TextFieldFocusState.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.12.2024.
//

import SwiftUI

struct TextFieldFocusState: View {
    @State private var name = ""
    @FocusState private var nameIsFocused: Bool
    var body: some View {
        VStack(spacing: 20.0) {
            //   Use @FocusState to set focus to a TextField.",
            
            TextField("enter name to continue", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
            //    When true, TextField gets
            //    the focus.
                .focused($nameIsFocused)
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.red, lineWidth: nameIsFocused ? 1 : 0)
                    .padding())
            Button("Continue") {
                nameIsFocused = name.isEmpty
            }
        }
        .font(.title)
        //    Don’t let user continue if
        //    the TextField is empty. Put
        //    focus in TextField so they
        //    can start typing.
    }
}

#Preview {
    TextFieldFocusState()
}
