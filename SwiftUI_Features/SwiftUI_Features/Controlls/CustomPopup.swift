//
//  CustomPopup.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 31.12.2024.
//

import SwiftUI

struct CustomPopup: View {
    @State private var showingModal = false
    var body: some View {
        ZStack {
            // See previous page
            // The Custom Popup is on top of the screen
            Button(action: {
                self.showingModal = true
            }) {
                Text("Show popup")
            }
            if $showingModal.wrappedValue {
                ZStack {
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                    // This VStack is the popup
                    VStack(spacing: 20) {
                        Text("Popup")
                            .bold().padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.orange)
                            .foregroundStyle(Color.white)
                        Spacer()
                        Button("Close") { self.showingModal = false }
                            .padding()
                    }
                    .frame(width: 300, height: 200)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 20)
                }
            }
        }
    }
}

#Preview {
    CustomPopup()
}
