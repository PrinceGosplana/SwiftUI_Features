//
//  PullToRefreshView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.08.2024.
//

import SwiftUI

struct PullToRefreshView: View {

    let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
    @State var users: [PTRUser] = []
    @State var searchText = ""

    var body: some View {
        NavigationStack {
            List(users) { user in
                VStack(alignment: .leading, spacing: 4) {
                    Text(user.name)

                    Text(user.email)
                        .font(.caption)
                }
            }
            /// refresh control indicator will show until async task finished
            .refreshable {
                await fetchUsers()
            }
            .searchable(text: $searchText) {
                ForEach(users.filter{ user in
                    searchText == "" ? true : user.email.lowercased().contains(searchText.lowercased())
                }) { user in
                    Text(user.email)
                    // auto complete the text when its tapped
                        .searchCompletion(user.name)
                }
            }
            .navigationTitle("Pull to Refresh")
        }
    }

    // fetching user in async, must be in viewModel
    private func fetchUsers() async {
        let session = URLSession(configuration: .default)

        do {
            let task = try await session.data(from: url)
            users = try JSONDecoder().decode([PTRUser].self, from: task.0)
        } catch {
            print("error")
        }
    }
}

#Preview {
    PullToRefreshView()
}


struct PTRUser: Identifiable, Decodable {
    let id: Int
    let name: String
    let email: String
}
