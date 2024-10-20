//
//  PhotoGridView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 18.10.2024.
//

import SwiftUI


struct PhotosView: View {
    @State private var detail: Int? = nil
    @State private var slowAnimations = false
    @Namespace private var dummyNS
    @Namespace private var namespace
    
    var body: some View {
        VStack {
            Toggle("Slow Animations", isOn: $slowAnimations)
            ZStack {
                photoGrid
                    .opacity(detail == nil ? 1 : 0)
                detailView
            }
            .animation(.default.speed(slowAnimations ? 0.2 : 1), value: detail)
        }
    }
    
    @ViewBuilder
    var detailView: some View {
        if let d = detail {
            Image("previewSample\(d)")
                .resizable()
                .matchedGeometryEffect(id: d, in: detail == nil ? namespace : dummyNS, isSource: false)
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
                        .matchedGeometryEffect(id: ix, in: namespace)
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

struct TransitionActive: ViewModifier {
    let active: Bool
    
    func body(content: Content) -> some View {
        content
            .overlay(active ? Color.cyan : Color.clear)
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
