//
//  TabView_PageTabViewStyleIndexViewStyle.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 19.11.2024.
//

import SwiftUI

struct TabView_PageTabViewStyleIndexViewStyle: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                
                Text("PAGE 1")
                Spacer()
                
                Image(systemName: "arrow.down.circle")
                    .padding(.bottom, 45)
            }
            VStack {
                Text("PAGE 2")
            }
            VStack {
                Text("PAGE 3")
            }
        }
        .font(.title)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    TabView_PageTabViewStyleIndexViewStyle()
}
