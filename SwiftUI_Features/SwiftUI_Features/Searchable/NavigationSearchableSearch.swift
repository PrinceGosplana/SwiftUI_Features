//
//  NavigationSearchableSearch.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 10.11.2024.
//

import SwiftUI

struct NavigationSearchableSearch: View {
    private let locations = ["Milton", "Milltown", "Millerville", "Milwaukee", "Millcreek",
    "Milagro", "Milano"]
    @State private var searchResults: [String] = []
    @State private var locationSearch = ""
    @State private var destination = ""
    var body: some View {
        NavigationStack {
            VStack(spacing: 20.0) {
                Text("Where do you want to go?")
                Text(destination)
                    .fontWeight(.bold)
                Spacer()
                
                    .font(.title)
                    .navigationTitle(Text("Navigation"))
            }
            .searchable(text: $locationSearch) {
                ForEach(searchResults, id: \.self) { name in
                    Button(name) {
                        destination = name
                    }
                }
            }
            .onChange(of: locationSearch) { _, location in
                searchResults = locations.filter { name in
                    name.hasPrefix(locationSearch)
                }
            }
        }
    }
}

#Preview {
    NavigationSearchableSearch()
}
