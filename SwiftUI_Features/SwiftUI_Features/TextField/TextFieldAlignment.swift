//
//  TextFieldAlignment.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.12.2024.
//

import SwiftUI

struct TextFieldAlignment: View {
    @State private var textFieldData1 = "Leading"
    @State private var textFieldData2 = "Center"
    @State private var textFieldData3 = "Trailing"
    var body: some View {
        VStack(spacing: 20) {
            Text("TextField").font(.largeTitle)
            Text("Text Alignment").foregroundStyle(.gray)
            Text("Change the alignment of text within your textfield by using themultilineTextAlignment modifier.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange)
            Group {
                TextField("Leading", text: $textFieldData1)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.leading) // Default
                TextField("Center", text: $textFieldData2)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                TextField("Trailing", text: $textFieldData3)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.trailing)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    TextFieldAlignment()
}
