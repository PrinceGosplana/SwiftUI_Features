//
//  AsyncImageView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 24.08.2024.
//

import SwiftUI

struct AsyncImageView: View {

    let url = URL(string: "https://images.pexels.com/photos/163037/london-street-phone-cabin-163037.jpeg")!

    var body: some View {
        NavigationStack {
            VStack {
                /*
                AsyncImage(url: url)
                /// Aspect ration isn't working directly...
                /// only frame is working with embedded with clipped
                    .frame(maxWidth: .infinity)
                    .frame(height: 600)
                    .clipped()
                 */
                AsyncImage(url: url, scale: 1.0) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 300)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .overlay(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 15))
                    } else {
                        // Error or loading
                        Image(systemName: "house.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.yellow)
                    }
                }
            }
            .navigationTitle("Async Image")
        }
    }
}

#Preview {
    AsyncImageView()
}
