//
//  ImageREndererView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.08.2024.
//

import SwiftUI

struct ImageREndererView: View {
    @State var generatedImage: UIImage?

    var body: some View {
        VStack {
            Button("Convert into Image") {
                let renderer = ImageRenderer(content: SampleView())
                if let image = renderer.uiImage {
                    generatedImage = image
                }
            }

            if let generatedImage {
                Image(uiImage: generatedImage)
            }
        }
    }

    @ViewBuilder
    private func SampleView() -> some View {
        VStack {
            Image(.girlWithKatana)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)

            Text("Sample")
                .fontWeight(.black)
                .foregroundStyle(.white)
        }
        .padding()
        .background(.red)
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

#Preview {
    ImageREndererView()
}
