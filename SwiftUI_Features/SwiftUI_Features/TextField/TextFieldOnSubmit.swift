//
//  TextFieldOnSubmit.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.12.2024.
//

import SwiftUI

struct TextFieldOnSubmit: View {
    @State private var name = ""
    @State private var names = ["Donny", "Sean", "Paul"]
    var body: some View {
        VStack(spacing: 20.0) {
            //    You can determine what happens when the keyboard's return button
            //    is tapped
            TextField("Join the group!", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
                .onSubmit {
                    //    The submitLabel modifier is used
                    //    here to change the return key on the
                    //    keyboard to something else.
                    names.append(name)
                    name = ""
                }
                .submitLabel(.join)
            List(names, id: \.self) { name in
                Text(name)
                    .padding()
            }
        }
        .font(.title)
    }
}

#Preview {
    TextFieldOnSubmit()
}
