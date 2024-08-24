//
//  CustomSheetDismissView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 24.08.2024.
//

import SwiftUI

/// Until iOS 14 a sheet can also be dismissed when it is swiped down, whereas here we can avoid that by using InveractiveDismissDisable

struct CustomSheetDismissView: View {

    @State private var show = false

    var body: some View {
        VStack {
            Button("Show sheet") {
                show.toggle()
            }
        }
        .sheet(isPresented: $show) {
            Text("I'm sheet view....")
            // Disabling Gesture dismiss
                .interactiveDismissDisabled(true)
        }
    }
}

#Preview {
    CustomSheetDismissView()
}
