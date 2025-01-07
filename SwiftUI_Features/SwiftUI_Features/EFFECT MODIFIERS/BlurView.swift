//
//  BlurView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.01.2025.
//

import SwiftUI

struct BlurView: View {
    var body: some View {
        HStack {
            Image(.coffee)
                .blur(radius: 1)
                .overlay(Text("1")
                    .bold()
                    .foregroundStyle(.white))
            Image(.coffee)
                .blur(radius: 10)
                .overlay(Text("10")
                    .bold()
                    .foregroundStyle(.white))
            Image(.coffee)
                .blur(radius: 50)
                .overlay(Text("50").bold())
        }
        
        HStack {
            Color.blue
                .frame(width: 100, height: 100)
                .blur(radius: 10)
                .overlay(Text("10").bold())
            Color.blue
                .frame(width: 100, height: 100)
                .blur(radius: 20)
                .overlay(Text("20").bold())
            Color.blue
                .frame(width: 100, height: 100)
                .blur(radius: 50)
                .overlay(Text("50").bold())
        }.padding(.bottom, 70)
    }
}

#Preview {
    BlurView()
}
