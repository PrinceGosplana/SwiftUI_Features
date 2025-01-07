//
//  Blur_UnderneathView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.01.2025.
//

import SwiftUI

struct Blur_UnderneathView: View {
    @State private var showingModal = false
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Text("This is a screen that is underneath the popup being shown.")
                Button("Show Popup", action: { showingModal = true })
                Spacer()
            }
            // Blur only when the modal popup is showing
            .blur(radius: $showingModal.wrappedValue ? 3 : 0)
            // The Custom Popup is on top of the screen
            if $showingModal.wrappedValue {
                ZStack {
                    Color.black.opacity(0.4).ignoresSafeArea()
                    // This VStack is the popup
                    VStack(spacing: 20) {
                        Text("Popup with the view underneath blurred")
                        Spacer()
                        Button("Close", action: { showingModal = false })
                            .padding()
                    }
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    Blur_UnderneathView()
}
