//
//  ContentShape_ContentShapeKinds.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 11.01.2025.
//

import SwiftUI

struct ContentShape_ContentShapeKinds: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("ContentShape")
                .font(.largeTitle)
            //        Not only can you define a content shape but you can say  what it’s for. Here, we apply it to a context menu.
            Image(systemName: "trash.circle")
                .font(.system(size: 70))
                .contentShape(.contextMenuPreview, Circle())
            //        By default, if you do not specify a content shape kind, it will be .interaction. This is what the previous page uses.
                .contextMenu {
                    Button("Menu 1") { }
                    Button("Menu 2") { }
                }
            Image(systemName: "trash.square")
                .font(.system(size: 70))
                .contentShape(.contextMenuPreview, RoundedRectangle(cornerRadius: 10))
                .contextMenu {
                    Button("Menu 1") { }
                    Button("Menu 2") { }
                }
        }
        .font(.title)
    }
}

#Preview {
    ContentShape_ContentShapeKinds()
}
