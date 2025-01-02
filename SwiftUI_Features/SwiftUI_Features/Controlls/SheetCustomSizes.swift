//
//  SheetCustomSizes.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.01.2025.
//

import SwiftUI

struct SheetCustomSizes: View {
    @State private var showSheet = false
    var body: some View {
        Button("Show Sheet with Custom Sizes") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            VStack(spacing: 16.0) {
                Text("The first stop is at 200.")
                Image(systemName: "arrow.up")
                Text("Slide up to go to 75% of the screen height.")
            }
            .padding()
            .presentationDetents([.fraction(0.75), .height(200)])
        }
        .font(.title)
    }
}

#Preview {
    SheetCustomSizes()
}
