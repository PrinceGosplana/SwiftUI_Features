//
//  GeometryProxyInScrollView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 19.07.2024.
//

import SwiftUI

extension View {
    var safeArea: UIEdgeInsets {
        if let windowScene = (UIApplication.shared.connectedScenes.first as? UIWindowScene) {
            return windowScene.keyWindow?.safeAreaInsets ?? .zero
        }
        return .zero
    }
}

struct GeometryProxyInScrollView: View {
    var body: some View {
        GeometryReader {
            let size  = $0.size

            NavigationStack {
                ScrollView(.vertical) {
                    HeaderView(size)
                }
            }
        }
    }

    @ViewBuilder
    private func HeaderView(_ size: CGSize) -> some View {
        HStack(spacing: 10) {
            Text("Welcome!")
                .font(.title.bold())
                .visualEffect { content, geometryProxy in
                    content
                        .scaleEffect(headerScale(size, proxy: geometryProxy), anchor: .topLeading)
                }

            Spacer()

            Image(systemName: "externaldrive.fill.badge.checkmark")
                .symbolRenderingMode(.multicolor)
                .font(.title2)
                .visualEffect { content, geometryProxy in
                    content
                        .scaleEffect(headerScale(size, proxy: geometryProxy), anchor: .topTrailing)
                }
        }
        .padding(.horizontal, 15)
        .background {
            VStack(spacing: 8) {
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .padding(.top, -(safeArea.top))
                    .padding(.bottom, -10)
                Divider()
            }
        }
    }

    private func headerScale(_ size: CGSize, proxy: GeometryProxy) -> CGFloat {
        let minY = proxy.frame(in: .scrollView).minY
        let screenHeight = size.height

        let progress = minY / screenHeight
        let scale = (min(max(progress, 0), 1)) * 1.2
        return 1 + scale
    }
}

#Preview {
    GeometryProxyInScrollView()
}
