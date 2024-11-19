//
//  TabViewPageTabViewStyleIndexDisplayMode.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 19.11.2024.
//

import SwiftUI

struct TabViewPageTabViewStyleIndexDisplayMode: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                
                Text("PAGE 1")
                Spacer()
                
            }
            VStack {
                
                Text("PAGE 2")
            }
            VStack {
                Text("PAGE 3")
            }
        }
        .font(.title)
        // hide dots
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

#Preview {
    TabViewPageTabViewStyleIndexDisplayMode()
}
