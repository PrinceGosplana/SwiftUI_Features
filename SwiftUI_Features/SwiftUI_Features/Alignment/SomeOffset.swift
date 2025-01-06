//
//  SomeOffset.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.01.2025.
//

import SwiftUI

struct SomeOffset: View {
    var body: some View {
        VStack {
            Text("Use the offset modifier to move a view from its original position using the X and Y coordinate values.")
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(.green)
                    .frame(width: 200, height: 100)
                    .shadow(radius: 5)
                    .offset(x: -20, y: -20)
                RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(.green)
                    .frame(width: 200, height: 100)
                    .shadow(radius: 5)
                RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(.green)
                    .frame(width: 200, height: 100)
                    .shadow(radius: 5)
                    .offset(x: 20, y: 20)
            }
            .padding()
            Text("Note, only the contents of the view are offset, not the view itself. The location of the original view remains the same. The red border shows the actual location of the rectangle's frame.")
                .padding(.horizontal)
            RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(.green)
                .frame(width: 200, height: 100)
                .shadow(radius: 5)
                .offset(x: 40, y: 40)
                .border(Color.red)
        }
        .padding()
    }
}

#Preview {
    SomeOffset()
}
