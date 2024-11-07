//
//  PickerRowsWithImages.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.11.2024.
//

import SwiftUI

struct PickerRowsWithImages: View {
    @State private var youTuberName = "Mark"
    var body: some View {
        VStack(spacing: 20) {
            
            Picker(selection: $youTuberName, label: Text("")) {
                Row(name: "Paul").tag("Paul")
                Row(name: "Chris").tag("Chris")
                Row(name: "Mark").tag("Mark")
                Row(name: "Scott").tag("Scott")
                Row(name: "Meng").tag("Meng")
            }
            
            .pickerStyle(.wheel)
            .padding(.horizontal)
        }
        .font(.title)
    }
}
fileprivate struct Row : View {
    var name: String
    var body: some View {
        HStack {
            Label(title: { Text(name) },
                  icon: { Image(systemName: "person.fill")
                .foregroundStyle(Color.red) }
            )
        }
    }
}

#Preview {
    PickerRowsWithImages()
}
