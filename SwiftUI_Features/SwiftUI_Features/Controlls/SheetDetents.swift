//
//  SheetDetents.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.01.2025.
//

import SwiftUI

struct SheetDetents: View {
    @State private var showSheet = false
    var body: some View {
        Button("Show Half Sheet") {
            showSheet.toggle()
        }
        //    Note: The word “detent” means to hold something in place. Presentation detents hold the sheet in place at different locations.
        .sheet(isPresented: $showSheet) {
            VStack(spacing: 16.0) {
                Text("Using a medium and large detent to present this sheet.")
                Image(systemName: "arrow.up")
                Text("Slide up to go from medium to large detent.")
            }
            .padding()
            .presentationDetents([.medium, .large])
        }
//        Set presentation detents to medium when you want the sheet to go 50% up. Large will go up 100%.
            .font(.title)
    }
}

#Preview {
    SheetDetents()
}
