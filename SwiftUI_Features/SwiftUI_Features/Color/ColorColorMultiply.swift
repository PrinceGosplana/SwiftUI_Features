//
//  ColorColorMultiply.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 13.12.2024.
//

import SwiftUI

struct ColorColorMultiply: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("You can combine colors to form new colors with the color multiply modifier.")
            HStack {
                Color.pink.frame(width: 88, height: 88)
                Image(systemName: "plus")
                Color.blue.frame(width: 88, height: 88)
                Image(systemName: "equal")
                Color.pink.colorMultiply(Color.blue)
                    .frame(width: 88, height: 88)
            }
            HStack {
                Color.yellow.frame(width: 88, height: 88)
                Image(systemName: "plus")
                Color.blue.frame(width: 88, height: 88)
                Image(systemName: "equal")
                Color.yellow.colorMultiply(Color.blue)
                    .frame(width: 88, height: 88)
            }
            HStack {
                Color.yellow.frame(width: 88, height: 88)
                Image(systemName: "plus")
                Color.red.frame(width: 88, height: 88)
                Image(systemName: "equal")
                Color.yellow.colorMultiply(Color.red)
                    .frame(width: 88, height: 88)
            }
        }
        .font(.title)
    }
}

#Preview {
    ColorColorMultiply()
}
