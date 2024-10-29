//
//  ListRowInsetView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.10.2024.
//

import SwiftUI

struct ListRowInsetView: View {
    @State private var newToDo = ""
    @State var data = [
        Todo(action: "Practice using List Row Insets", due: "Today"),
        Todo(action: "Grocery shopping", due: "Today"),
        Todo(action: "Vegetables", due: "Today", isIndented: true),
        Todo(action: "Spices", due: "Today", isIndented: true),
        Todo(action: "Cook dinner", due: "Next Week"),
        Todo(action: "Paint room", due: "Next Week")
    ]
    var body: some View {
        VStack {
            VStack {
                Text("To Do")
                    .font(.title)
                //    Each platform has its own default
                //    edge values around each row.
                //    You will notice from previous
                //    examples that rows are
                //    automatically indented and have
                //    some vertical padding.
                //    This is controlled by the default
                //    edge insets.
                    .foregroundStyle(.black)
                HStack {
                    TextField("new todo", text: $newToDo)
                        .textFieldStyle(.roundedBorder)
                    Button(action: {
                        data.append(Todo(action: newToDo))
                        newToDo = ""
                    }) {
                        Image(systemName: "plus.circle.fill")
                        //    See next page for the code
                        //    that insets the rows.
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                }
            }
            .padding()
            .background(Color.green)
            List {
                ForEach(self.data) { datum in
                    Text(datum.action)
                        .font(.title)
                        .padding()
                    // Inset row based on data
                        .listRowInsets(EdgeInsets(top: 0,
                                                  leading: datum.isIndented ? 60 : 20,
                                                  bottom: 0, trailing: 0))
                }
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    ListRowInsetView()
}
