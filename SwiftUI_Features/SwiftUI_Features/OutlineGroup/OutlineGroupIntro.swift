//
//  OutlineGroupIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.11.2024.
//

import SwiftUI

struct OutlineGroupIntro: View {
    var parents = [Parent(name: "Mark",
                          children: [Parent(name: "Paola")]),
                   Parent(name: "Rodrigo",
                          children: [Parent(name: "Kai"),
                                     Parent(name: "Brennan"),
                                     Parent(name: "Easton")]),
                   Parent(name: "Marcella",
                          children: [Parent(name: "Sam",
                                            children: [Parent(name: "Joe")]),
                                     Parent(name: "Melissa"),
                                     Parent(name: "Melanie")])]
    var body: some View {
        VStack(spacing: 20.0) {
            OutlineGroup(parents, children: \.children) { parent in
                HStack {
                    Image(systemName: "person.circle")
                    Text("\(parent.name)")
                    Spacer()
                }
            }
            .padding(.horizontal)
            .tint(.red)
        }
        .font(.title)
    }
}

#Preview {
    OutlineGroupIntro()
}
