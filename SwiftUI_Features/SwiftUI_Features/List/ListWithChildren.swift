//
//  ListWithChildren.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.10.2024.
//

import SwiftUI

struct Parent: Identifiable {
    var id = UUID()
    var name = ""
    var children: [Parent]?
    
}

struct ListWithChildren: View {
    var parents = [Parent(name: "Mark",
                          children: [Parent(name: "Paola")]),
                   Parent(name: "Rodrigo",
                          children: [Parent(name: "Kai"),
                                     Parent(name: "Brennan"),
                                     Parent(name: "Easton")]),
                   Parent(name: "Marcella",
                          children: [Parent(name: "Sam"),
                                     Parent(name: "Melissa"),
                                     Parent(name: "Melanie")])]
    var body: some View {
        VStack(spacing: 20.0) {
            
            List(parents, children: \.children) { parent in
                Text("\(parent.name)")
            }
        }
        .font(.title)
    }
}

#Preview {
    ListWithChildren()
}
