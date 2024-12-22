//
//  SizingfWithPaddingFrame.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.12.2024.
//

import SwiftUI

struct SizingfWithPaddingFrame: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Rectangular Shapes").font(.largeTitle)
            Text("Sizing").foregroundStyle(.gray)
            Text("Use modifiers, such as padding or frame, to size rectangular shapes as you see fit.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.blue)
            Text("Using padding")
            ZStack {
                Rectangle().padding()
                Rectangle().padding(40)
                    .colorInvert()
                Rectangle().padding(60)
                Rectangle().padding(80)
                    .colorInvert()
            }
            .frame(width: 200, height: 200)
            
            Text("Using frames")
            
            ZStack(alignment: .bottomLeading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.secondary)
                    .frame(width: 320, height: 250)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.secondary)
                    .frame(width: 270, height: 200)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.secondary)
                    .frame(width: 220, height: 150)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.secondary)
                    .frame(width: 170, height: 100)
            }
        }.font(.title)
    }
}

#Preview {
    SizingfWithPaddingFrame()
}
