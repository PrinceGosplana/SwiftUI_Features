//
//  ListRowBackgroundonSections.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.10.2024.
//

import SwiftUI

struct ListRowBackgroundonSections: View {
    var body: some View {
        List {
            //            There is no modifier for a section
            //                                        background but you can use the
            //                                        listRowBackground modifier to
            //                                        change the section’s color.
            Section("Section 1") {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
            }
            .listRowBackground(Color.green.opacity(0.2))
            //            Use width: 214
            Section("Section 2") {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
            }
            .listRowBackground(Color.blue.opacity(0.2))
        }
        .headerProminence(.increased)
    }
}

#Preview {
    ListRowBackgroundonSections()
}
