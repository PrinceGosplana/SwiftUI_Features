//
//  PickerNavigationLinkStyle.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.11.2024.
//

import SwiftUI

struct PickerNavigationLinkStyle: View {
    @State private var selectedDev = 0
    var body: some View {
        NavigationStack {
            Form {
                Picker("iOS Dev", selection: $selectedDev) {
                    Text("Lem").tag(0)
                    Text("Mark").tag(1)
                    Text("Rod").tag(2)
                }
                .pickerStyle(.navigationLink)
            }
            .font(.title)
        }
    }
}

#Preview {
    PickerNavigationLinkStyle()
}
