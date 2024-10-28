//
//  ListSelectionSingleObject.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.10.2024.
//

import SwiftUI

struct TaskItem: Identifiable, Hashable {
var id = UUID()
var item = ""
var complete = false
}

struct ListSelectionSingleObject: View {
    
    @State private var data = [
        TaskItem(item: "Practice Coding"),
        TaskItem(item: "Grocery shopping"),
        TaskItem(item: "Get tickets"),
        TaskItem(item: "Clean house"),
        TaskItem(item: "Do laundry"),
        TaskItem(item: "Cook dinner"),
        TaskItem(item: "Paint room")
    ]
    @State private var selection: TaskItem?
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                List(data, selection: $selection) { taskItem in
                    Text(taskItem.item)
                        .padding(selection == taskItem ? 8 : 0)
                        .tag(taskItem) // This is the key
                    //        2
                    //        Enabling row selection to work
                    //        with objects requires one extra
                    //        step.
                    //        1 If your rows are populated with
                    //        objects when you need to:
                    //        1. Change your selection
                    //        property type to match it.
                    //        2. Add a tag property to the
                    //        row containing the object.
                }
                Text("To do first: ") +
                Text(selection?.item ?? "")
            }
            .bold()
            .font(.title)
            .navigationTitle("List")
        }
    }
}

#Preview {
    ListSelectionSingleObject()
}
