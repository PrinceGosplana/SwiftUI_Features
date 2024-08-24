//
//  OnSubmitView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 24.08.2024.
//

import SwiftUI

/// On Submit will fire the action block when a search field or a Text Field is Submitted

struct OnSubmitView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("On trigger ...")

                /// Also submit can use with textfield
                TextField("Type here", text: .constant(""))
                    .textFieldStyle(.roundedBorder)
                    .padding()
            }
            .searchable(text: .constant(""))
            .navigationTitle("On submit")
        }
        .onSubmit(of: .search) {
            print("search field submitted...")
        }
    }
}

#Preview {
    OnSubmitView()
}
