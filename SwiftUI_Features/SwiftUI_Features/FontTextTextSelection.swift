//
//  FontTextTextSelection.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.11.2024.
//

import SwiftUI

struct FontTextTextSelection: View {
    var body: some View {
        VStack(spacing: 60.0) {
            // Add the textSelection modifier to allow users to long-press and copy text
            
            Text("No Text Selection")
            Text("Text Selection Enabled")
                .textSelection(.enabled)
        }
        .font(.title)
    }
}

#Preview {
    FontTextTextSelection()
}
