//
//  RectangularStokes.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.12.2024.
//

import SwiftUI

struct RectangularStokes: View {
    var body: some View {
        VStack(spacing: 25) {
            Text("Rectangular Shapes")
            //        Use the stroke modifier to outline the shape. The stroke width is 1 if not specified.
                .font(.largeTitle)
            Rectangle()
                .stroke(Color.blue)
                .padding()
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.blue, lineWidth: 20)
                .padding()
            
            RoundedRectangle(cornerRadius: 25)
            /* dash parameter
             The 15 represents the length of the dash
             The 25 represents the length in between dashes
             */
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10,
                                                       lineCap: CGLineCap.round,
                                                       dash: [15, 25]))
                .padding()
        }
    }
}

#Preview {
    RectangularStokes()
}
