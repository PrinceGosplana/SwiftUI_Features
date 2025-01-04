//
//  ToolbarControlGroup.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.01.2025.
//

import SwiftUI

struct ToolbarControlGroup: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                //        Use the ControlGroup with a navigation style to show multiple buttons in the NavigationStack that are closer together than using a ToolbarItemGroup.
            }
            .navigationTitle("Toolbar")
            .font(.title)
            .toolbar {
                ToolbarItem {
                    ControlGroup {
                        Button(action: {}) {
                            Image(systemName: "aspectratio")
                        }
                        Button(action: {}) {
                            Image(systemName: "gearshape.fill")
                        }
                    }
                    .controlGroupStyle(.navigation)
                }
            }
            //        Compare with the ToolbarItemGroup earlier. The control group buttons are slightly closer together.
            .tint(.green)
        }
    }
}

#Preview {
    ToolbarControlGroup()
}
