//
//  ProgressViewShowingProgress.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.11.2024.
//

import SwiftUI

struct ProgressViewShowingProgress: View {
    @State private var progress = 0.75
    
    var body: some View {
        VStack(spacing: 20) {
            Text("You can one-way bind data to your ProgressView to show progression.")
            
            ProgressView(value: progress)
                .padding()
            
            ProgressView("Progress (\(Int(progress * 100))%)", value: progress)
                .padding()
        }
        .font(.title)
    }
}

#Preview {
    ProgressViewShowingProgress()
}
