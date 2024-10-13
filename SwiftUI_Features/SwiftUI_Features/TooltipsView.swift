//
//  TooltipsView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 13.10.2024.
//

import SwiftUI

extension View {
    func tooltip<Other: View>(@ViewBuilder other: () -> Other) -> some View {
        modifier(TooltipModifier(tooltipContent: other()))
    }
}

struct TooltipModifier<TooltipContent: View>: ViewModifier {
    var tooltipContent: TooltipContent
        @State private var isShowing = false

        func body(content: Content) -> some View {
            content
                .onTapGesture {
                    isShowing.toggle()
                }
                .overlay(alignment: .top) {
                    ZStack {
                        if isShowing {
                            tooltipContent
                                .padding(8)
                                .background(.regularMaterial.shadow(.drop(color: Color.primary.opacity(0.2), radius: 2)), in: .rect(cornerRadius: 4))
                                .fixedSize()
                                .font(.body)
                        }
                    }
                    .alignmentGuide(.top, computeValue: { dimension in
                        dimension[.bottom] + 8
                    })
                }
        }
}

struct TooltipsView: View {
    var body: some View {
        HStack(spacing: 32) {
                    Image(systemName: "house")
                        .tooltip {
                            HStack {
                                Text("Home")
                                Circle()
                                    .fill(.green)
                                    .frame(width: 10, height: 10)
                            }
                        }
                    Image(systemName: "video")
                    Image(systemName: "mic")

                }
                .font(.largeTitle)
                .padding()
    }
}

#Preview {
    TooltipsView()
}
