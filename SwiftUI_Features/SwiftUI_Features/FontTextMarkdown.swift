//
//  FontTextMarkdown.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.11.2024.
//

import SwiftUI

struct FontTextMarkdown: View {
    var body: some View {
        VStack(spacing: 20.0) {
            //        You can include Markdown formatting inside of your Text views
            
            Text("*Italic*")
            Text("_Italic_")
            Text("**Bold**")
            Text("__Bold__")
            Text("***Bold & Italic***")
            Text("___Bold & Italic___")
            Text("[URL](https://www.bigmountainstudio.com)")
            Text("`Code // Monospaced`")
        }
        .font(.title)
    }
}

#Preview {
    FontTextMarkdown()
}
