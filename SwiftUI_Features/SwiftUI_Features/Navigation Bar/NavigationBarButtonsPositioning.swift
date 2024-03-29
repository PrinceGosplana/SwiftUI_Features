//
//  NavigationBarButtonsPositioning.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 28.03.2024.
//

import SwiftUI

struct NavigationBarButtonsPositioning: View {

    @State var navigationTitle = "🚗 Cars"
    @State var searchableText = ""

    var body: some View {
        NavigationStack {
            Image(systemName: "car")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)

            /// navigation settings
                .navigationTitle($navigationTitle)
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(.teal, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {

                        Button("Edit") {

                        }
                        .foregroundStyle(.black)
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {

                        } label: {
                            Image(systemName: "plus")
                        }
                        .foregroundStyle(.black)
                    }
                }
                .toolbarTitleMenu {
                    Button("🚖 Car") {
                        navigationTitle = "🚖 Car"
                    }
                    Button("🏍️ Motorcycles") {
                        navigationTitle = "🏍️ Motorcycles"
                    }
                    Button("🚌 Bus") {
                        navigationTitle = "🚌 Bus"
                    }
                }
                .searchable(text: $searchableText)
        }
    }
}

#Preview {
    NavigationBarButtonsPositioning()
}
