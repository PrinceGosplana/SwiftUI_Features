//
//  FontText_ListFormatting.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.11.2024.
//

import SwiftUI

struct FontText_ListFormatting: View {
    @State private var people = ["Mark", "Chase", "Rod", "Chris"]
    @State private var names = [
        PersonNameComponents(
        givenName: "Mark",
        familyName: "Smith"
    ),
                                PersonNameComponents(
                                    givenName: "Chase",
                                    familyName: "Blue"
                                ),
                                PersonNameComponents(
                                    givenName: "Rod",
                                    familyName: "Liber"
                                ),
                                PersonNameComponents(
                                    givenName: "Chris",
                                    familyName: "Durts"
                                )]
    var body: some View {
        VStack(spacing: 20) {
            //    You can format an array of values so they are all comma separated and join the last element as specified
            
            Text(people, format: .list(type: .and))
            Text(people, format: .list(type: .or))
            Text(people, format: .list(type: .and, width: .narrow))
            Text(people, format: .list(type: .and, width: .short))
            Text(people, format: .list(type: .and, width: .standard))
            Text(names, format: .list(memberStyle: .name(style: .abbreviated),
                                      type: .and, width: .short))
        }
        .font(.title)
    }
}

#Preview {
    FontText_ListFormatting()
}
