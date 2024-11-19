//
//  TabViewPageTabViewStyle.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 19.11.2024.
//

import SwiftUI

struct TabViewPageTabViewStyle: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                
                Text("PAGE")
                HStack {
                    Image(systemName: "1.circle")
                    Image(systemName: "arrow.right.circle")
                }
            }
            VStack {
                Text("PAGE")
                HStack {
                    Image(systemName: "arrow.left.circle")
                    Image(systemName: "2.circle")
                    Image(systemName: "arrow.right.circle")
                }
            }
            VStack {
                Text("PAGE")
                HStack {
                    Image(systemName: "arrow.left.circle")
                    Image(systemName: "3.circle")
                }
            }
        }
        .font(.title)
        .tabViewStyle(.page)
    }
}

#Preview {
    TabViewPageTabViewStyle()
}
