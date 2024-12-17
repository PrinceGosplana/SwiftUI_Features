//
//  ImageSymbolsWeight.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 17.12.2024.
//

import SwiftUI

struct ImageSymbolsWeight: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Just as fonts have weight, symbols have weight too. You change the weight the same way you set the font's weight.").font(.title).layoutPriority(2)
            HStack(spacing: 40) {
                Image(systemName: "moon.stars")
                    .font(Font.largeTitle.weight(.ultraLight))
                Image(systemName: "moon.stars")
                    .font(Font.largeTitle.weight(.regular))
                Image(systemName: "moon.stars")
                    .font(Font.largeTitle.weight(.semibold))
                Image(systemName: "moon.stars")
                    .font(Font.largeTitle.weight(.bold))
                Image(systemName: "moon.stars")
                    .font(Font.largeTitle.weight(.black))
            }
            Text("Use a custom font point size with a font weight.").font(.title).layoutPriority(2)
            HStack(spacing: 40) {
                Image(systemName: "moon.zzz")
                    .font(Font.system(size: 60, weight: .ultraLight))
                Image(systemName: "moon.zzz")
                    .font(Font.system(size: 60, weight: .light))
                Image(systemName: "moon.zzz")
                    .font(Font.system(size: 60, weight: .regular))
                Image(systemName: "moon.zzz")
                    .font(Font.system(size: 60, weight: .bold))
            }
        }
    }
}

#Preview {
    ImageSymbolsWeight()
}
