//
//  ToolbarToolbarItemGroup.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.01.2025.
//

import SwiftUI

struct ToolbarToolbarItemGroup: View {
    var body: some View {
        NavigationStack {
            VStack {
                //        Use the ToolbarItemGroup to show groups of buttons in a bar.
            }
            .font(.title)
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItemGroup {
                    Button(action: {}) {
                        Image(systemName: "aspectratio")
                    }
                    Button(action: {}) {
                        Image(systemName: "gearshape.fill")
                    }
                }
            }
            .tint(.green)
        }
    }
}

#Preview {
    ToolbarToolbarItemGroup()
}
