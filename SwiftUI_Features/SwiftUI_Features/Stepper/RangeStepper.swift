//
//  RangeStepper.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 18.11.2024.
//

import SwiftUI

struct RangeStepper: View {
    
    @State private var stars = 1
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Stepper")
                .font(.largeTitle)
                .padding()
            
            Text("Range of Values")
                .font(.title)
                .foregroundStyle(.gray)
            
            Text("You can set a range for the stepper too. In this example, the range is between one and five.")
            
            Stepper(value: $stars, in: 1...5) {
                Text("Rating")
            }.padding(.horizontal)
            
            HStack {
                ForEach(1...stars, id: \.self) { star in
                    Image(systemName: "star.fill")
                }
            }
            .font(.title)
            .foregroundStyle(.yellow)
        }
        
    }
}

#Preview {
    RangeStepper()
}
