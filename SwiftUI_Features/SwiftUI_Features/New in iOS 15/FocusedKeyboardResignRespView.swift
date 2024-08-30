//
//  FocusedKeyboardResignRespView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 30.08.2024.
//

import SwiftUI

struct FocusedKeyboardResignRespView: View {
    @FocusState var showKeyBoard: Bool

    var body: some View {
        VStack(spacing: 20) {
            TextField("Type here", text: .constant(""))
                .textFieldStyle(.roundedBorder)
                .padding()
            /// Opening and Dismissing keyboard natively
                .focused($showKeyBoard)

            Text(showKeyBoard ? "Showing" : "Hidden")
            
            Button {
                showKeyBoard.toggle()
            } label: {
                Text("Toggle Keyboard")
            }
        }
    }
}

#Preview {
    FocusedKeyboardResignRespView()
}
