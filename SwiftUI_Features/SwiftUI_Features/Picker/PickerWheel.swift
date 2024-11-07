//
//  PickerWheel.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.11.2024.
//

import SwiftUI

struct PickerWheel: View {
    @State private var yourName = "Mark"

    var body: some View {
        VStack(spacing: 20) {
            
            Picker("Name", selection: $yourName) {
                Text("Paul").tag("Paul")
                Text("Chris").tag("Chris")
                Text("Mark").tag("Mark")
                Text("Scott").tag("Scott")
                Text("Meng").tag("Meng")
            }
            .pickerStyle(.wheel)
        }
        .font(.title)
    }
}

#Preview {
    PickerWheel()
}
