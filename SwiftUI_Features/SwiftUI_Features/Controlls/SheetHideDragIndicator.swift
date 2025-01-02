//
//  SheetHideDragIndicator.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.01.2025.
//

import SwiftUI

struct SheetHideDragIndicator: View {
    @State private var showSheet = false
    var body: some View {
        Button("Show Sheet") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            VStack(spacing: 16.0) {
                Image(systemName: "arrow.up")
                Text("Any time you have more than one detent, the drag indicator automatically shows. You can hide it though.")
                Spacer()
            }
            .padding()
            .presentationDetents([.medium, .large])
            // SheetHideDragIndicator
            .presentationDragIndicator(.hidden)
        }
        .font(.title)
    }
}

#Preview {
    SheetHideDragIndicator()
}
