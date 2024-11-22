//
//  FontTightening.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.11.2024.
//

import SwiftUI

struct FontTightening: View {
    var body: some View {
        VStack(spacing: 20) {

            Text("You might want to tighten up some text that might be too long.")
            Text("In the example below, the green has .allowTightening(true)")
            
            Group {
                Text("Allows tightening to allow text to fit in one line.")
                    .foregroundStyle(.red)
                    .allowsTightening(false)
                    .padding(.horizontal)
                    .lineLimit(1)
                Text("Allows tightening to allow text to fit in one line.")
                    .foregroundStyle(.green)
                    .allowsTightening(true)
                    .padding(.horizontal)
                    .lineLimit(1)
            }.padding(.horizontal)
        }
    }
}

#Preview {
    FontTightening()
}
