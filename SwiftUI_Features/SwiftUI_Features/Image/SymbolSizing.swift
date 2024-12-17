//
//  SymbolSizing.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 17.12.2024.
//

import SwiftUI

struct SymbolSizing: View {
    var body: some View {
        Text("You can scale images using imageScale modifier.")
        HStack(spacing: 40) {
            Image(systemName: "thermometer.sun").imageScale(.large)
            Image(systemName: "thermometer.sun").imageScale(.medium)
            Image(systemName: "thermometer.sun").imageScale(.small)
        }
        Text("You can also change size with font text styles")
        HStack(spacing: 40) {
            Image(systemName: "thermometer.sun").font(.largeTitle)
            Image(systemName: "thermometer.sun").font(.title)
            Image(systemName: "thermometer.sun").font(.body)
            Image(systemName: "thermometer.sun").font(.caption)
        }
        Text("Font point size will also work")
        HStack(spacing: 40) {
            Image(systemName: "thermometer.sun").font(.system(size: 60))
            Image(systemName: "thermometer.sun").font(.system(size: 50))
            Image(systemName: "thermometer.sun").font(.system(size: 40))
            Image(systemName: "thermometer.sun").font(.system(size: 30))
        }
    }
}

#Preview {
    SymbolSizing()
}
