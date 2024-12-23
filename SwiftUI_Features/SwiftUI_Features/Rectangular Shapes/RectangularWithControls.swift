//
//  RectangularWithControls.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 23.12.2024.
//

import SwiftUI

struct RectangularWithControls: View {
    @State private var textField = "Rounded Rectangle with TextField"
    
    var body: some View {
        VStack(spacing: 20) {
            Text("You can apply rectangular shapes to other views using the .background modifier")
                .font(.title)
            Button(action: {}) {
                Text("RoundedRectange and Button")
                    .bold().padding()
            }
            .background(RoundedRectangle(cornerRadius: 10)
                .strokeBorder(Color.blue, lineWidth: 1))
            .tint(.blue)
            
            Button(action: {}) {
                Text("RoundedRectange and Button")
                    .foregroundStyle(.white)
                    .bold().padding()
            }
            .background(RoundedRectangle(cornerRadius: 10).foregroundStyle(.blue))
            
            TextField("Placeholder Text", text: $textField)
                .foregroundStyle(.white)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10).foregroundStyle(.blue))
                .padding()
        }
    }
}

#Preview {
    RectangularWithControls()
}
