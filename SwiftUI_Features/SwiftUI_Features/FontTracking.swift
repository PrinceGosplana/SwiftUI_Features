//
//  FontTracking.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.11.2024.
//

import SwiftUI

struct FontTracking: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Normal Tracking")
            
            Text("Decreased Tracking")
                .tracking(-2)
            
            Text("Increased Tracking")
                .tracking(8)
        }
        .font(.title)
    }
}

#Preview {
    FontTracking()
}
