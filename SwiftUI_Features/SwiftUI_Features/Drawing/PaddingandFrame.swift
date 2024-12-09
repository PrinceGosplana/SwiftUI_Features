//
//  PaddingandFrame.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 09.12.2024.
//

import SwiftUI

struct PaddingandFrame: View {
    var body: some View {
        Text("Using padding")
        ZStack {
            Circle()
                .fill(Color.red)
                .padding()
            Circle()
                .fill(Color.white)
                .padding(40)
            Circle()
                .fill(Color.red)
                .padding(60)
            Circle()
                .fill(Color.white)
                .padding(80)
        }.frame(width: 200, height: 200)
        
        Text("Using frames")
        
        ZStack(alignment: .bottom) {
            Circle()
                .fill(Color.secondary)
                .frame(height: 250)
            Circle()
                .fill(Color.secondary)
                .frame(height: 200)
            Circle()
                .fill(Color.secondary)
                .frame(height: 150)
            Circle()
                .fill(Color.secondary)
                .frame(height: 100)
            
            //        Note, using multiple secondary colors on top of each other (using frames example) will lighten or darken each one depending on if your app is in dark mode or light mode.
        }
    }
}

#Preview {
    PaddingandFrame()
}
