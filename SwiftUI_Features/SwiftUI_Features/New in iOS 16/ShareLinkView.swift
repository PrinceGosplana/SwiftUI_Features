//
//  ShareLinkView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.08.2024.
//

import SwiftUI

struct ShareLinkView: View {
    var imageSample = ImageFile(image: Image(.previewSample3))

    var body: some View {
        /// MARK: New share link
        VStack(spacing: 20) {
            ShareLink(item: "Hello, shared Message") {
                Text("Share Message")
                    .font(.title)
                    .padding()
                    .background(.green)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            }

            ShareLink(item: imageSample, preview: SharePreview("Sample", image: imageSample.image)) {
                Text("Share image")
                    .font(.title)
                    .padding()
                    .background(.indigo)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            }
        }
    }
}

#Preview {
    ShareLinkView()
}

struct ImageFile: Transferable {
    var image: Image
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.image)
    }
}
