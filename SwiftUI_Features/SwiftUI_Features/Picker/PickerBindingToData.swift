//
//  PickerBindingToData.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.11.2024.
//

import SwiftUI

struct PickerBindingToData: View {
    @State private var youTuberName = "Mark"
    var youTubers = ["Sean", "Chris", "Mark", "Scott", "Paul"]
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Who do you want to watch today?")
            Picker(selection: $youTuberName, label: Text("")) {
                ForEach(youTubers, id: \.self) { name in
                    Row(name: name)
                }
            }
            .pickerStyle(.wheel)
            Text("Selected: \(youTuberName)")
        }
        .font(.title)
    }
}

fileprivate struct Row : View {
    var name: String
    var body: some View {
        HStack {
            Image(systemName: "person.fill")
                .padding(.trailing)
                .foregroundStyle(Color.orange)
            Text(name)
        }
    }
}

#Preview {
    PickerBindingToData()
}
