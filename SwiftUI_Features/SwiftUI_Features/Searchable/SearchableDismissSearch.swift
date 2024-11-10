//
//  SearchableDismissSearch.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 10.11.2024.
//

import SwiftUI

struct SearchableDismissSearch: View {
    private let locations = ["Milton", "Milltown", "Millerville", "Milwaukee", "Millcreek",
                             "Milagro", "Milano"]
    @State private var searchResults: [String] = []
    @State private var locationSearch = ""
    @State private var destination = ""
    var body: some View {
        NavigationStack {
            SearchableSubview(destination: $destination)
        }
        //    This example looks a lot
        //    like the previous example
        //    except the view inside the
        //    NavigationStack is a sub
        //    view.
        .searchable(text: $locationSearch) {
            ForEach(searchResults, id: \.self) { name in
                Button(name) {
                    destination = name
                }
                //    The sub view is on the
                //    next page. You will see
                //    how it can cancel the
                //    search.
            }
        }
        .onChange(of: locationSearch) { _, location in
            searchResults = locations.filter { name in
                name.hasPrefix(locationSearch)
            }
        }
    }
}

#Preview {
    SearchableDismissSearch()
}

struct SearchableSubview: View {
    @Binding var destination: String
    @Environment(\.isSearching) var isSearching
    @Environment(\.dismissSearch) var dismissSearch
    var body: some View {
        VStack(spacing: 16) {
            Text("Where do you want to go?")
            Text(destination)
                .fontWeight(.bold)
            //The two environment values used in
            //this view:
            //1. isSearching is a read-only
            //boolean value that tells you if the
            //focus is currently in the search
            //text field.
            //2. dismissSearch is a function
            //you can call that simulates
            //tapping the Cancel button when
            //searching.
            if isSearching && destination.isEmpty == false {
                Button("Confirm") {
                    dismissSearch()
                }
            }
            Spacer()
        }
        .font(.title)
        .navigationTitle(Text("Searchable"))
    }
}
