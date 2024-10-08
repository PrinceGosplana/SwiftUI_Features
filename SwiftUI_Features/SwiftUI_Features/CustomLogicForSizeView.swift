//
//  CustomLogicForSizeView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.10.2024.
//

import SwiftUI

struct CustomLogicForSizeView: View {
    
    @State private var axis = Axis.Set.horizontal
    
    var body: some View {
        VStack {
            Button("Change Axis") {
                axis = axis == .horizontal ? .vertical : .horizontal
            }
            .font(.title)
            
            Color.mint
                .containerRelativeFrame(axis) { length, axis in
                    if axis == .horizontal {
                        return length / 2
                    } else {
                        return length / 1.25
                    }
                        
                }
                .padding()
        }
    }
}

#Preview {
    CustomLogicForSizeView()
}
