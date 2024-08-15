//
//  ScrollViewFeaturesView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 15.08.2024.
//

import SwiftUI

struct ScrollViewFeaturesView: View {
    
    @State var image: FunnyPicture?
    let images = FunnyPicture.images

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {

            Text(image?.name ?? "")
                .font(.headline)
                .padding(.horizontal, 32)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(images) { image in
                        Image(image.image)
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .frame(width: 200, height: 200)
                            .shadow(radius: 10, y: 10)
                        // each photo take the whole width with containerRelativeFrame
//                            .containerRelativeFrame(.horizontal)
                            .scrollTransition(
                                topLeading: .interactive,
                                bottomTrailing: .interactive,
                                axis: .horizontal
                            ) { effect, phase in
                                effect
//                                    .scaleEffect(phase.value)
                                    .scaleEffect(1 - abs(phase.value))
                                    .opacity(1 - abs(phase.value))
                                    .rotation3DEffect(.degrees(phase.value * -90), axis: (x: 0, y: 1, z: 0))
                            }
                            
                    }
                }
                .scrollTargetLayout()
            }
            .frame(height: 200)
            .safeAreaPadding(.horizontal, 32)
            .scrollClipDisabled()
            .scrollTargetBehavior(.viewAligned)//(.paging)
            .scrollPosition(id: $image)
            .onAppear {
                image = images[2]
            }

            Spacer()
        }
    }
}

#Preview {
    ScrollViewFeaturesView()
}
