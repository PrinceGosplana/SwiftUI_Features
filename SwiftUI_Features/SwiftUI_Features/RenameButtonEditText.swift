//
//  RenameButtonEditText.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 09.11.2024.
//

import SwiftUI

struct RenameButtonEditText: View {
    @State private var editText = false
    @State private var name = "Mark"
    @FocusState private var nameFocused: Bool
    
    var body: some View {
        VStack {
            if editText {
                HStack {
                    TextField("name", text: $name)
                        .textFieldStyle(.roundedBorder)
                        .focused($nameFocused)
                    Button("Done") {
                        editText.toggle()
                    }
                }
            } else {
                HStack {
                    Text(name)
                    Spacer()
                    RenameButton()
                    //    You can see how the
                    //    Rename button is style with
                    //    an icon and text.
                        .buttonStyle(.borderedProminent)
                }
            }
        }
        //    When the button is tapped,
        //    it will fun the code within
        //    the renameAction modifier.
        .renameAction {
            editText.toggle()
            nameFocused.toggle()
        }
        .padding()
    }
}

#Preview {
    RenameButtonEditText()
}
