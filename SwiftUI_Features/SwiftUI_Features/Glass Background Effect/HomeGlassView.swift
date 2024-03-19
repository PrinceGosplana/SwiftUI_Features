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
}

#Preview {
    GlassBackgroundView()
}
