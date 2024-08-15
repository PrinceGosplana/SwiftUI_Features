//
//  ScrollViewFeaturesView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 15.08.2024.
//

import SwiftUI

struct ScrollViewFeaturesView: View {

    let images = FunnyPicture.images

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(images) {
                        Image($0.image)
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .frame(width: 200, height: 200)
                            .shadow(radius: 10, y: 10)
                        // each photo take the whole width with containerRelativeFrame
//                            .containerRelativeFrame(.horizontal)
                    }
                }
                .scrollTargetLayout()
            }
            .frame(height: 200)
            .safeAreaPadding(.horizontal, 32)
            .scrollClipDisabled()
            .scrollTargetBehavior(.viewAligned)//(.paging)

            Spacer()
        }
    }
}

#Preview {
    ScrollViewFeaturesView()
}
