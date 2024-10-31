//
//  BindingWithinTheListView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 31.10.2024.
//

import SwiftUI

struct ToDoItem: Identifiable {
let id = UUID()
var task = ""
var priority = false
var done = false
}

struct BindingWithinTheListView: View {
    @State private var items = [ToDoItem(task: "Get milk", done: false),
                                ToDoItem(task: "Wash car", done: true),
                                ToDoItem(task: "Cut grass", done: false)]
    
    var body: some View {
        VStack(spacing: 20.0) {
            
            List($items) { $item in
                HStack {
                    TextField("Task", text: $item.task)
                    Toggle("Done?", isOn: $item.done)
                        .labelsHidden()
                }
            }
        }
        .font(.title)
    }
    
}

#Preview {
    BindingWithinTheListView()
}
