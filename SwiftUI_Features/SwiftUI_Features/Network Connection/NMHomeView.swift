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
        ZStack {
            HStack(spacing: 10) {
                Image(systemName: "network.slash")
                Text("No connection")
            }
            .padding()
            .foregroundStyle(.white.opacity(0.8))
            .background(.black.opacity(0.8))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding()
    }
}

#Preview {
    NMContentView()
}
