//
//  PresentationDetentsView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.08.2024.
//

import SwiftUI

struct PresentationDetentsView: View {
    @State var showView = false

    var body: some View {
        Button("Show Sheet") {
            showView.toggle()
        }
        .sheet(isPresented: $showView) {
            Text("Hello from Sheet")
                .presentationDetents([.small, .medium, .large])
                .presentationDragIndicator(.hidden)
        }
    }
}

extension PresentationDetent {
    static let small = Self.height(100)
}

#Preview {
    PresentationDetentsView()
}
