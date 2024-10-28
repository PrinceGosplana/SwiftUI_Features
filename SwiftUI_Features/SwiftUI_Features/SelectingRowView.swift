//
//  SelectingRowView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.10.2024.
//

import SwiftUI

struct SelectingRowView: View {
    
    @State private var data = ["Practice Coding", "Grocery shopping", "Get tickets", "Clean house", "Do laundry", "Cook dinner", "Paint room"]
    @State private var selection: String?
                               
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                List(data, id: \.self, selection: $selection) { item in
                    Text(item)
                    //        To allow rows to be selected, start by using an
                    //        optional type to store which row is selected.
                    //        The type should match what you set for the id on
                    //        the List.
                        .fontWeight(selection == item ? .bold : .regular)
                        .foregroundStyle(selection == item ? .green : .primary)
                        .padding(selection == item ? 8 : 0)
                }
                Text("To do first: ") +
                Text(selection ?? "")
                    .bold()
                //        Then bind the selection parameter
                //        to your @State property above using
                //        the dollar sign ($).
            }
            .font(.title)
            .navigationTitle("List")
        }
    }
}

#Preview {
    SelectingRowView()
}
