//
//  FontDesign.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 19.11.2024.
//

import SwiftUI

struct FontDesign: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Default font design")
                .font(Font.system(size: 30, design: Font.Design.default))

            Text("Here is monospaced")
                .font(.system(size: 30, design: .monospaced))
            
            Text("And there is rounded")
                .font(.system(.title, design: .rounded))
            Text("Finally, we have serif!")
                .font(.system(.title, design: .serif))
            
            Divider()
            Text("Using Font Design Modifier")
                .fontDesign(.rounded)
                .fontWeight(.heavy)
        }
        .font(.title)
    }
}

#Preview {
    FontDesign()
}
