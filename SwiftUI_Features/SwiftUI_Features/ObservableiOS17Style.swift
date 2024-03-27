//
//  ObservableiOS17Style.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 27.03.2024.
//

import SwiftUI
/// add Observation for iOS 17
import Observation

/*
class UserObserve: ObservableObject {
    @Published var name: String
    @Published var jobTitle: String
    @Published var followersCount: Int
    @Published var bio: String

    init(name: String, jobTitle: String, followersCount: Int, bio: String) {
        self.name = name
        self.jobTitle = jobTitle
        self.followersCount = followersCount
        self.bio = bio
    }
}
*/
/// new model for iOS 17
@Observable class UserObserve {
    var name: String = ""
    var jobTitle: String = ""
    var followersCount: Int = 0
    var bio: String = ""

    init(name: String, jobTitle: String, followersCount: Int, bio: String) {
        self.name = name
        self.jobTitle = jobTitle
        self.followersCount = followersCount
        self.bio = bio
    }
}

struct ObservableiOS17Style: View {
    /// Before iOS 17 style
    /*@StateObject var user = UserObserve(name: "Awesome Curt",
                                        jobTitle: "iOS Dev Streamer", followersCount: 120,
                                        bio: "My bio goes somewhere")*/

    @State var user = UserObserve(name: "Awesome Curt",
                                        jobTitle: "iOS Dev Streamer", followersCount: 1,
                                        bio: "My bio goes somewhere")
    var body: some View {
        VStack(alignment: .leading) {
            Text(user.name)
                .font(.title.bold())
            Text(user.jobTitle)
                .foregroundStyle(.secondary)
            Text("^[\(user.followersCount) follower](inflect: true)")
                .foregroundStyle(.secondary)

            Button {
                user.followersCount += 1
            } label: {
                Label("Add Follower", systemImage: "person.badge.plus")
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 30)
        }
    }
}

#Preview {
    ObservableiOS17Style()
}
