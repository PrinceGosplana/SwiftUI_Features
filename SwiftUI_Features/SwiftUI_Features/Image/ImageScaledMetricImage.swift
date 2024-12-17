//
//  ImageScaledMetricImage.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 17.12.2024.
//

import SwiftUI

struct ImageScaledMetricImage: View {
//    Make sure the image is resizable  and then use the scaled metric variable for the height and width of the image and it will change as the dynamic text size changes.
    
    @ScaledMetric var size: CGFloat = 32
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Use the ScaledMetric property wrapper to adjust the size of an image in relation to the dynamic text size.")
            HStack {
                Image(.coffee)
                    .resizable()
                    .frame(width: size, height: size)
                Text("Grows with Text")
            }
            .font(.title)
        }
    }
}

#Preview {
    ImageScaledMetricImage()
}
