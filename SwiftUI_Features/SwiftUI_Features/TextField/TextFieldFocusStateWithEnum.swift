//
//  TextFieldFocusStateWithEnum.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.12.2024.
//

import SwiftUI

struct TextFieldFocusStateWithEnum: View {
    //        This enum will keep track of which
    //        text field will get the focus.
    enum NameFields {
        case firstName
        case lastName
    }
    @State private var firstName = ""
    @State private var lastName = ""
    @FocusState private var nameFields: NameFields?
//    Set @FocusState to the enum.
    var body: some View {
        VStack(spacing: 20.0) {
            //Use an enum when focus can be set to multiple text fields on the
            
            TextField("First name", text: $firstName)
                .padding(.horizontal)
                .focused($nameFields, equals: .firstName)
            TextField("Last name", text: $lastName)
                .padding(.horizontal)
                .focused($nameFields, equals: .lastName)
            //    Use the focused modifier to
            //    use the same @FocusState
            //    for both text fields but equal
            //    to different cases.
            Button("Save") {
                if firstName.isEmpty {
                    nameFields = .firstName
                } else if lastName.isEmpty {
                    nameFields = .lastName
                } else {
                    // Save function
                }
            }
            //    Set the case on the
            //    @FocusState property to
            //    have SwiftUI set the cursor
            //    inside the text field.
        }
        .textFieldStyle(.roundedBorder)
        .font(.title)
    }
}

#Preview {
    TextFieldFocusStateWithEnum()
}
