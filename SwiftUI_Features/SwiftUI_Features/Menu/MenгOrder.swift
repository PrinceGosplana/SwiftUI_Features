//
//  MenгOrder.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.11.2024.
//

import SwiftUI

struct Men_Order: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            HStack(spacing: 32) {
                //        With priority menu order,
                //        the first item is always
                //        closest to the menu
                //        button whether the menu
                //        goes up or down from the
                //        button.
                Menu("Priority") {
                    Button("Menu Item 1", action: {})
                    Button("Menu Item 2", action: {})
                    Button("Menu Item 3", action: {})
                    Button("Menu Item 4", action: {})
                    Button("Menu Item 5", action: {})
                }
                .menuOrder(.priority) /* Default */
                
                //        The fixed menu order will
                //        maintain the order from
                //        top to bottom no matter
                //        how the menu is
                //        displayed.
                Menu("Fixed Order") {
                    Button("Menu Item 1", action: {})
                    Button("Menu Item 2", action: {})
                    Button("Menu Item 3", action: {})
                    Button("Menu Item 4", action: {})
                    Button("Menu Item 5", action: {})
                }
                .menuOrder(.fixed)
            }
        }
        .font(.title)
    }
}

#Preview {
    Men_Order()
}
