//
//  FrameAlignment.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 05.01.2025.
//

import SwiftUI

struct FrameAlignment: View {
    var body: some View {
        Text("The frame modifier allows you to align the content within a frame (if there is available space). The alignment won't work on views that push out to fill all available space, like shapes.")
        
        HStack {
            Button(action: {}) {
                Text("Button")
            }
            .frame(width: 150, height: 150, alignment: .top)
            .border(Color.pink)
            Button(action: {}) {
                Text("Button")
            }
            .frame(width: 150, height: 150, alignment: .trailing)
            .border(Color.pink)
        }
        HStack {
            Button(action: {}) {
                Text("Button")
            }
            .frame(width: 150, height: 150, alignment: .leading)
            .border(Color.pink)
            Button(action: {}) {
                Text("Button")
            }
            .frame(width: 150, height: 150, alignment: .bottom)
            .border(Color.pink)
        }
    }
}

#Preview {
    FrameAlignment()
}
