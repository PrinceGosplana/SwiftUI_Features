//
//  ToolbarLocation.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.01.2025.
//

import SwiftUI

struct ToolbarLocation: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                //        All of your toolbar items will be declared in the same place but then you use the placement parameter to specify where they go.
            }
            .navigationTitle(Text("Toolbar"))
            .font(.title)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "line.horizontal.3")
                        //        Add items to the navigation bar.
                            .padding(.horizontal)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "line.horizontal.3.decrease.circle")
                            .padding(.horizontal)
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    Button(action: {}) {
                        //        You can also explicitly state that you want an item added to the bottom toolbar.
                        Image(systemName: "aspectratio")
                        Text("Aspect Ratio")
                    }
                }
            }
            .tint(.green)
        }
    }
}

#Preview {
    ToolbarLocation()
}
