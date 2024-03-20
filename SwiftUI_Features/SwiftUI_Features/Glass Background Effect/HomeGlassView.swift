//
//  HomeGlassView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 19.03.2024.
//

import SwiftUI

struct HomeGlassView: View {
    var body: some View {
        VStack {
            /// Login View
            VStack(spacing: 12) {
                Text("Welcome!")
                    .font(.title.bold())
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Username")
                        .font(.callout.bold())
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Rectangle()
                .fill(.BG)
                .ignoresSafeArea()
        }
    }
    
    /// Custom Text Field
    @ViewBuilder
    func customTF(hint: String, value: Binding<String>) -> some View {
        TextField(hint, text: value)
            .padding(.vertical, 10)
            .padding(.horizontal, 15)
            .background(.white.opacity(0.12))
            .clipShape(.rect(cornerRadius: 8, style: .continuous))
    }
}

#Preview {
    GlassBackgroundView()
}
