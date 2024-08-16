//
//  NMHomeView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 16.08.2024.
//

import SwiftUI

struct NMHomeView: View {

    @EnvironmentObject var monitor: NetworkMonitor

    var body: some View {
        VStack(spacing: 10) {
            if monitor.hasNetworkConnection {
                Text("Online")
            } else {
                Text("Offline")
            }
        }
    }
}

#Preview {
    NMContentView()
}
