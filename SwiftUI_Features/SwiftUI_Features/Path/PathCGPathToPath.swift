//
//  PathCGPathToPath.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.12.2024.
//

import SwiftUI

struct PathCGPathToPath: View {
    var body: some View {
        VStack(spacing: 20) {
            RoundedCorners(cornerRadius: 20, corners: [.topRight, .bottomRight])
                .fill(Color.purple)
                .frame(height: 80)
                .padding([.trailing, .top], 50)
            RoundedCorners(cornerRadius: 40, corners: [.topRight, .bottomLeft])
                .fill(Color.purple)
                .padding(.horizontal, 100)
                .padding(.top, 50)
            Spacer()
            VStack {
                HStack {
                    Image(systemName: "info.circle").padding(.leading)
                    Text("More info")
                    Spacer()
                }
                .padding(.top)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: 75)
            .foregroundStyle(.white)
            // Use the custom Shape as the background
            .background(RoundedCorners(cornerRadius: 30, corners: [.topLeft])
                .fill(Color.purple))
            .padding(.leading, 50)
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    PathCGPathToPath()
}

struct RoundedCorners: Shape {
    var cornerRadius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        return Path(path.cgPath) // Path can accept Core Graphic Paths
    }
}
