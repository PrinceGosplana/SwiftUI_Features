//
//  NMContentView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 16.08.2024.
//

import SwiftUI

struct NMContentView: View {
    
    @ObservedObject var monitor = NetworkMonitor()

    var body: some View {
        NMHomeView()
            .environmentObject(monitor)
    }
}

#Preview {
    NMContentView()
}
