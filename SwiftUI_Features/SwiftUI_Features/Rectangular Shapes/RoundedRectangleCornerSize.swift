//
//  RoundedRectangleCornerSize.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.12.2024.
//

import SwiftUI

struct RoundedRectangleCornerSize: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("You can customize the height and width of the rounded corners.")
            
            Text("Corner width: 40, height: 60")
            RoundedRectangle(cornerSize: CGSize(width: 40, height: 60))
                .fill(Color.blue)
                .padding()
            Text("Corner width: 60, height: 40")
            RoundedRectangle(cornerSize: CGSize(width: 60, height: 40))
                .fill(Color.blue)
                .padding()
        }
        .font(.title)
        .minimumScaleFactor(0.5)
    }
}

#Preview {
    RoundedRectangleCornerSize()
}
