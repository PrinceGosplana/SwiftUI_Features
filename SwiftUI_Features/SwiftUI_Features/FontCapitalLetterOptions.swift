//
//  FontCapitalLetterOptions.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 23.11.2024.
//

import SwiftUI

struct FontCapitalLetterOptions: View {
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                
                Text("This is the TEST text - 123")
                    .font(.title.lowercaseSmallCaps())
                
                Text("This is the TEST text - 123")
                    .font(.title.uppercaseSmallCaps())
                
                Text("This is the TEST text - 123")
                    .font(.title.smallCaps())
            }
            .font(.title)
        }
    }
}

#Preview {
    FontCapitalLetterOptions()
}
