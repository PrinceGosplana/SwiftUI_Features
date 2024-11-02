//
//  MenuInsideMenu.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.11.2024.
//

import SwiftUI

struct MenuInsideMenu: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Menu("Edit") {
                Button("Add color", systemImage: "eyedropper.full") { }
                Button("Change contrast", systemImage: "circle.lefthalf.fill") { }
                Menu("More...") {
                    Button("Magic Wand", systemImage: "wand.and.stars") { }
                    Button("Magic Paint", systemImage: "paintbrush.fill") { }
                }
            }
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    MenuInsideMenu()
}
