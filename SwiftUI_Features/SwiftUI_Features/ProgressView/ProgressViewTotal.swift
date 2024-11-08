//
//  ProgressViewTotal.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.11.2024.
//

import SwiftUI

struct ProgressViewTotal: View {
    @State private var total = 0.5
    @State private var progress = 0.4
    
    var body: some View {
        ProgressView("Files downloaded: \(Int(progress/total * 100))%", value: progress,
                     total: total)
        .padding()
        .font(.title)
    }
}

#Preview {
    ProgressViewTotal()
}
