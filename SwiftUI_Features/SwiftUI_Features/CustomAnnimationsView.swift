//
//  CustomAnnimationsView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.03.2024.
//

import SwiftUI

struct CustomAnnimationsView: View {
    @State private var showView: Bool = false
    
    var body: some View {
        VStack {
            if showView {
                Text("Hello")
            }
            
            Button("Show View") {
                withAnimation(.bouncy, completionCriteria: .removed) {
                    showView.toggle()
                } completion: {
                    print("Completion but view not removed")
                }
            }
        }
    }
}

#Preview {
    CustomAnnimationsView()
}
