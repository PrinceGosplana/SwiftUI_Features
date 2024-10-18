//
//  PhotoGridView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 18.10.2024.
//

import SwiftUI

struct PhotosView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [.init(.adaptive(minimum: 100, maximum: .infinity), spacing: 3)]) {
                ForEach(1..<8) { ix in
                    Image("previewSample\(ix)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}


struct PhotoGridView: View {
    var body: some View {
        PhotosView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    PhotoGridView()
}
