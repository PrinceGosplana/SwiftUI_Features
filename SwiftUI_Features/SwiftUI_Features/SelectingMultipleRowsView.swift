//
//  SelectingMultipleRowsView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.10.2024.
//

import SwiftUI

struct SelectingMultipleRowsView: View {
    @State private var data = ["Practice Coding", "Grocery shopping", "Get tickets",
                               "Clean house", "Do laundry", "Cook dinner", "Paint room"]
    @State private var selections = Set<String>()
    //    By changing the type to a Set, the
    //    List will automatically know it can
    //    hold multiple selection values.
    var body: some View {
        NavigationStack {
            List(data, id: \.self, selection: $selections) { item in
                Text(item)
            }
            .font(.title)
            .navigationTitle("List")
            .toolbar { EditButton() }
        }
    }
}

#Preview {
    SelectingMultipleRowsView()
}
