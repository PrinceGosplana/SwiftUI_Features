//
//  NavigationSearchableFilter.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 10.11.2024.
//

import SwiftUI

struct NavigationSearchableFilter: View {
    private let names = ["Chris", "Paul", "Scott", "Donny", "Antoine", "Denise", "Sean"]
    @State private var filteredNames: [String] = []
    @State private var nameSearch = ""
    //    Switch data sources if filtering.
    //    (Next example shows another
    var body: some View {
        NavigationStack {
            VStack(spacing: 20.0) {
                List(nameSearch.isEmpty ? names : filteredNames, id: \.self) { name in
                    Text(name)
                        .font(.title)
                }
                
            }
            .navigationTitle(Text("Navigation"))
            //    This placement will persist the search
            //    field when scrolling
        }
        .searchable(text: $nameSearch,
                    placement: .navigationBarDrawer(displayMode: .always),
                    prompt: Text("Filter"))
        .onChange(of: nameSearch) { _, name in
            filteredNames = names.filter { name in
                name.hasPrefix(nameSearch)
            }
        }
    }
}

#Preview {
    NavigationSearchableFilter()
}
