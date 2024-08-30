//
//  IndividualBindingsView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 30.08.2024.
//

import SwiftUI

struct IndividualUserModel: Identifiable {
    var id = UUID().uuidString
    var userName: String
}

extension IndividualUserModel {
    static let mock: [IndividualUserModel] = [
        .init(userName: "Marty"),
        .init(userName: "Rick"),
        .init(userName: "Neon")
    ]
}

struct IndividualBindingsView: View {

    @State private var users = IndividualUserModel.mock

    var body: some View {
        List {
            ForEach($users) { $user in
                TextField("Edit name", text: $user.userName)
            }
        }
    }
}

#Preview {
    IndividualBindingsView()
}
