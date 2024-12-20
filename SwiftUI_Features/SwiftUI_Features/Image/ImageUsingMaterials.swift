//
//  ImageUsingMaterials.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 20.12.2024.
//

import SwiftUI

struct ImageUsingMaterials: View {
    var body: some View {
        ZStack {
            Image("previewSample1")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Materials are also ShapeStyles which means they too can be applied to symbols.")
                HStack {
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.secondary)
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.tertiary)
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.quaternary)
                }
                .font(.system(size: 90)).padding()
                .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 20))
                HStack {
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.ultraThinMaterial)
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.regularMaterial)
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.thickMaterial)
                }
                .font(.system(size: 90)).padding()
                .background(RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.thinMaterial, lineWidth: 8))
            }
            .font(.title)
        }
    }
}

#Preview {
    ImageUsingMaterials()
}
