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
        HStack {
            Text("Hello")
        }
        .offlineAlert()
    }
}

#Preview {
    NMContentView()
}
