//
//  SelectionDisabled.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.10.2024.
//

import SwiftUI

struct SelectionDisabled: View {
    @State private var data = ["Things to do", "Practice Coding", "Grocery shopping",
                               "Get tickets", "Clean house", "Do laundry", "Cook dinner", "Paint room"]
    @State private var selection: String?
    //    Use width: 214
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                List(data, id: \.self, selection: $selection) { item in
                    Text(item)
                        .selectionDisabled(item == "Things to do")
                }
            }
            .font(.title)
            .navigationTitle("List")
            //    If you do not want a row to be
            //    selected, you can use the
            //    selectionDisabled modifier.
        }
    }
}

#Preview {
    SelectionDisabled()
}
