//
//  Navigation_NavBarItems.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.11.2024.
//

import SwiftUI

struct Navigation_NavBarItems: View {
    var body: some View {
        NavigationStack {
            //        You can add navigation bar buttons to the
            //        leading or trailing (or both) sides of a
            //        navigation bar.
            VStack {
            }
            .navigationTitle("Navigation Bar Buttons")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "bell.fill")
                            .padding(.horizontal)
                    }
                }
                //        For more ways on how to
                //        use the toolbar modifier,
                //        go to Controls Modifiers
                //        > Toolbar section.
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Actions", action: { })
                }
            }
            .tint(.pink)
        }
    }
}

#Preview {
    Navigation_NavBarItems()
}
