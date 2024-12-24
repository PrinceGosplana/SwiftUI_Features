//
//  RectangularUnevenCorners.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.12.2024.
//

import SwiftUI

struct RectangularUnevenCorners: View {
    var body: some View {
        VStack {
            HStack {
                //        There is now a built-in shape that allows you to round individual corners on a rectangle.
                UnevenRoundedRectangle(topLeadingRadius: .infinity,
                                       bottomLeadingRadius: 0,
                                       bottomTrailingRadius: 100,
                                       topTrailingRadius: 0)
                .fill(.blue.gradient)
                UnevenRoundedRectangle(topLeadingRadius: 0,
                                       bottomLeadingRadius: 100,
                                       bottomTrailingRadius: 0,
                                       topTrailingRadius: .infinity)
                .fill(.green.gradient)
            }
            HStack {
                UnevenRoundedRectangle(topLeadingRadius: 0,
                                       bottomLeadingRadius: .infinity,
                                       bottomTrailingRadius: 0,
                                       topTrailingRadius: 100)
                .fill(.blue)
                UnevenRoundedRectangle(topLeadingRadius: 100,
                                       bottomLeadingRadius: 0,
                                       bottomTrailingRadius: .infinity,
                                       topTrailingRadius: 0)
                .fill(.green)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    RectangularUnevenCorners()
}
