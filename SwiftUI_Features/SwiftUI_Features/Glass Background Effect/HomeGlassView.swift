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
