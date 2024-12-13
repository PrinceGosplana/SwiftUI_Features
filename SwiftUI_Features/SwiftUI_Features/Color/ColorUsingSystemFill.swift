//
//  ColorUsingSystemFill.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 13.12.2024.
//

import SwiftUI

struct ColorUsingSystemFill: View {
    var body: some View {
        VStack {
            Text("UIColor also contains system fills that have a degree of transparency that you could use.")
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(UIColor.systemFill))
                    .overlay(Text("Darkest - systemFill"))
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(UIColor.secondarySystemFill))
                    .overlay(Text("secondarySystemFill"))
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(UIColor.tertiarySystemFill))
                    .overlay(Text("tertiarySystemFill"))
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(UIColor.quaternarySystemFill))
                    .overlay(Text("Lightest - quaternarySystemFill"))
            }
        }
        .font(.title)
    }
}

#Preview {
    ColorUsingSystemFill()
}
