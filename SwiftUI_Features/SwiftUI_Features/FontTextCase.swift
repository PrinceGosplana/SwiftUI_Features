//
//  FontTextCase.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.11.2024.
//

import SwiftUI

struct FontTextCase: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("This is the TEST text - 123")
            
            Text("This is the TEST text - 123")
                .textCase(.lowercase)
            
            Text("This is the TEST text - 123")
                .textCase(.uppercase)
        }
        .font(.title)
    }
}

#Preview {
    FontTextCase()
}
