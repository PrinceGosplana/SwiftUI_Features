//
//  CoordinateSpaceIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 05.01.2025.
//

import SwiftUI

let GreenSquareSpace = "GreenSquareCoordinateSpace"

struct CoordinateSpaceIntro: View {
    @State var location = CGPoint.zero
    var body: some View {
        VStack(spacing: 20) {
            Text("Use the coordinateSpace modifier to create a named coordinate space that you can refer to elsewhere.")
            Text("The red dot's position starts at 0,0 in the green square's coordinate space.")
                .padding(.horizontal)
            Color.green
                .frame(width: 200, height: 200)
                .opacity(0.5)
                .overlay(RedCircle(location: $location))
                .coordinateSpace(name: GreenSquareSpace)
            Text("Location: \(Int(location.x)), \(Int(location.y))")
            //    A coordinate space is added to the green color view here. This means that the upper left corner of the green view starts the coordinate space at x: 0, y: 0.
        }
        .font(.title)
    }
}

struct RedCircle: View {
    @Binding var location: CGPoint
    var body: some View {
        Circle()
            .fill(Color.red)
            .frame(width: 25, height: 25)
            .gesture(DragGesture(coordinateSpace: .named(GreenSquareSpace))
                .onChanged { info in
//                    Use the same coordinate space name to access the x and y coordinate space that was attached to a view elsewhere.
                    location = info.location
                })
            .position(location)
    }
}

#Preview {
    CoordinateSpaceIntro()
}
