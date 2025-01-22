//
//  TabViewStyleView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.01.2025.
//

import SwiftUI

struct TabViewStyleView: View {
    var body: some View {
        if #available(iOS 18.0, *) {
            TabView {
                Tab("Boat", systemImage: "sailboat") {
                    EmptyView()
                }
                
                Tab("Wind", systemImage: "wind") {
                    EmptyView()
                }
                
                Tab("Sea", systemImage: "water.waves") {
                    EmptyView()
                }
            }
            .background(.black)
            .tabViewStyle(.page)
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    TabViewStyleView()
}
