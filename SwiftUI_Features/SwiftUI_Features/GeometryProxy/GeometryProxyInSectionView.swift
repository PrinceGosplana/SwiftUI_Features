//
//  GeometryProxyInSectionView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 19.07.2024.
//

import SwiftUI

struct GeometryProxyInSectionView: View {
    var body: some View {
        GeometryReader {
            let size = $0.size

            NavigationStack {
                ScrollView(.vertical) {
                    LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]) {
                        Section {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(height: 200)
                                .foregroundStyle(.mint)

                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(height: 200)
                                .foregroundStyle(.indigo)
                        } header: {
                            HeaderView(size)
                        }
                    }
                }
                .background(Color(.systemGroupedBackground))
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

            Image(systemName: "sun.max.fill")
                .symbolRenderingMode(.multicolor)
                .font(.title)
        }
        .padding(.horizontal, 15)
        .background {
            VStack(spacing: 0) {
                Rectangle()
                    .fill(.ultraThinMaterial)
                Divider()
            }
            .visualEffect { content, geometryProxy in
                content
                    .opacity(headerBGOpacity(geometryProxy))
            }
            .padding(.top, -(safeArea.top))
            .padding(.bottom, -10)
        }
    }

    private func headerScale(_ size: CGSize, proxy: GeometryProxy) -> CGFloat {
        let minY = proxy.frame(in: .scrollView).minY
        let screenHeight = size.height

        let progress = minY / screenHeight
        let scale = (min(max(progress, 0), 1)) * 1.2
        return 1 + scale
    }

    private func headerBGOpacity(_ proxy: GeometryProxy) -> CGFloat {
        let minY = proxy.frame(in: .scrollView).minY + safeArea.top / 2
        let value = minY > 0 ? 0 : (-minY / 15)
        return value
    }
}

#Preview {
    GeometryProxyInSectionView()
}
