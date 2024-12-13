//
//  CircularShapesWithButtons.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 13.12.2024.
//

import SwiftUI

struct CircularShapesWithButtons: View {
    var body: some View {
        VStack(spacing: 30) {
            Text( "You can apply circular shapes to other views using the .background modifier.")
            Button{} label: {
                Text("Use the Capsule shape")
                    .bold().padding()
            }
            .background(.purple, in: Capsule().stroke())
            .tint(.purple)
            
            Button(action: {}) {
                Text("Use the Capsule shape")
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
            }
            .background(Capsule().fill(.purple))
            .tint(.purple)
            Text("Circle and Button combination:")
            Button(action: {}) {
                Image(systemName: "circle.grid.hex.fill")
                    .font(.largeTitle)
                    .padding()
                
            }
            .background(.purple, in: Circle())
            .tint(.white)
        }
        .font(.title)
    }
}

#Preview {
    CircularShapesWithButtons()
}
