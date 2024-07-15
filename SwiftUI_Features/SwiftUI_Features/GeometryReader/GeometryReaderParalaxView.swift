//
//  GeometryReaderParalaxView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 14.07.2024.
//

import SwiftUI

struct GeometryReaderParalaxView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            GeometryReaderView {
                Image(.piggy)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}


struct GeometryReaderView<Content: View>: View {

    let content: Content
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content()
    }
    var body: some View {
        GeometryReader { reader in
            let size = reader.frame(in: .global)
            if size.minY > -550 {
                content
                    .offset(
                        x: -size.minX,
                        y: -size.minY
                    )
                    .frame(
                        width: UIScreen.main.bounds.width,
                        height: size.minY > 0 ? size.minY + 350 : 350
                    )
            }
        }
        .frame(height: 330)
    }
}

#Preview {
    GeometryReaderParalaxView()
}
