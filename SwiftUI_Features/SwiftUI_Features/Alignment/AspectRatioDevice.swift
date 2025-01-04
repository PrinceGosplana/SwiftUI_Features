//
//  AspectRatioDevice.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.01.2025.
//

import SwiftUI

struct AspectRatioDevice: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Aspect Ratio")
                .font(.largeTitle)
            Text("Resizing for Devices")
                .foregroundStyle(.gray)
            Text("You might have a situation where you want the size of some view to always be half the width of the device but still maintain the same aspect ratio.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange).foregroundStyle(Color.white)
            GeometryReader { geometry in
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: geometry.size.width/2)
                    .aspectRatio(1.5, contentMode: .fit)
                    .foregroundStyle(.purple)
                    .overlay(Text("2:3 Aspect Ratio")
                        .foregroundStyle(.white))
            }
        }.font(.title)
    }
}

#Preview {
    AspectRatioDevice()
}
