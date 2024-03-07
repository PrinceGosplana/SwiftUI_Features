//
//  CustomTransitionsView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.03.2024.
//

import SwiftUI

struct CustomTransitionsView: View {
    @State private var showView: Bool = false
    
    var body: some View {
        VStack {
            if showView {
                Rectangle()
                    .fill(.red.gradient)
                    .frame(width: 150, height: 150)
            }
            
            Button("Show view") {
                withAnimation(.bouncy) {
                    showView.toggle()
                }
            }
        }
    }
}

#Preview {
    CustomTransitionsView()
}
