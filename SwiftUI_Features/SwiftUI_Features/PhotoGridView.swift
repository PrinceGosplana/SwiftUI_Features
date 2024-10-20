//
//  PhotoGridView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 18.10.2024.
//

import SwiftUI


struct PhotosView: View {
    @State private var detail: Int? = nil
    
    var body: some View {
        ZStack {
            photoGrid
                .opacity(detail == nil ? 1 : 0)
            detailView
        }
        .animation(.default, value: detail)
    }
    
    @ViewBuilder
    var detailView: some View {
        if let d = detail {
            Image("previewSample\(d)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture {
                    detail = nil
                }
        }
    }
    
    var photoGrid: some View {
        ScrollView {
            LazyVGrid(columns: [.init(.adaptive(minimum: 100, maximum: .infinity), spacing: 3)], spacing: 3) {
                ForEach(1..<11) { ix in
                    Image("previewSample\(ix)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .clipped()
                        .aspectRatio(1, contentMode: .fit)
                        .onTapGesture {
                            detail = ix
                        }
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
