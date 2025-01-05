//
//  FullScreenCover_OverBars.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 05.01.2025.
//

import SwiftUI

struct FullScreenCover_OverBars: View {
    @State private var showDetailView = false
    var body: some View {
        TabView {
            NavigationStack {
                VStack(spacing: 20) {
                    Text("A fullScreenCover will overlap navigation and tab bars.")
                    Spacer()
                    Button(action: {
                        showDetailView = true
                    }, label: {
                        Text("Show Details")
                    })
                    Spacer()
                }
                .font(.title)
                .fullScreenCover(isPresented: $showDetailView) {
                    FullScreenCoverDetailView()
                }
                .navigationTitle("FullScreenCover")
            }
            .tabItem {
                Label("Full Screen",
                      systemImage: "rectangle.fill.on.rectangle.fill")
            }
        }
    }
}

#Preview {
    FullScreenCover_OverBars()
}
