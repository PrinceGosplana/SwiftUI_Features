//
//  SymbolsIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 17.12.2024.
//

import SwiftUI

struct SymbolsIntro: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("Image").font(.largeTitle)
            Text("From Symbols").font(.title).foregroundStyle(.gray)
            Text("You can also use the Image view to load 'symbols' using the 'systemName' parameter in the Image initializer.")
            Text("Here are some examples of symbols:")
            HStack(spacing: 40) {
                Image(systemName: "cloud.sun.fill")
                Image(systemName: "cloud.sun.rain.fill")
                Image(systemName: "cloud.sun.bolt.fill")
            }
            Text("Tip: Use the app, SF Symbols, to browse over 1500 symbols available.")
            Text("Set color with the foregroundStyle modifier.")
            
            HStack(spacing: 40) {
                Image(systemName: "cloud.sun.fill")
                    .foregroundStyle(Color.red)
                Image(systemName: "cloud.sun.rain.fill")
                    .foregroundStyle(Color.orange)
                Image(systemName: "cloud.sun.bolt.fill")
                    .foregroundStyle(Color.yellow)
                //        This number has grown substantially! Every year Apple is adding more symbols.
            }
        }
    }
}

#Preview {
    SymbolsIntro()
}
