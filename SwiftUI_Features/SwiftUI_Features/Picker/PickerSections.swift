//
//  PickerSections.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.11.2024.
//

import SwiftUI

struct PickerSections: View {
    @State private var favoriteState = 1
    var body: some View {
        VStack(spacing: 20) {
            
            Picker("States", selection: $favoriteState) {
                Section {
                    Text("California").tag(0)
                    Text("Utah").tag(1)
                } header: {
                    Text("West")
                }
                Section {
                    Text("Vermont").tag(2)
                    Text("New Hampshire").tag(3)
                } header: {
                    Text("East")
                }
            }
            Spacer()
        }
    }
}

#Preview {
    PickerSections()
}
