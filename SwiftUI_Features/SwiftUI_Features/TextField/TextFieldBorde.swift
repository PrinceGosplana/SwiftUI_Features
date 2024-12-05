//
//  TextFieldBorde.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 05.12.2024.
//

import SwiftUI

struct TextFieldBorde: View {
    @State private var textFieldData = ""
    var body: some View {
        VStack(spacing: 20) {
            Text("Use the border modifier to apply a ShapeStyle to the border of thetext field.")
                .padding()
            
            Group {
                TextField("Data", text: $textFieldData)
                    .padding(5)
                    .border(Color.orange)
                TextField("Data", text: $textFieldData)
                    .padding(5)
                    .border(.ultraThickMaterial, width: 4)
                
                TextField("Data", text: $textFieldData)
                    .padding(5)
                    .border(.tertiary, width: 5)
                TextField("Data", text: $textFieldData)
                    .padding(5)
                    .border(LinearGradient(colors: [.orange, .pink],
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing), width: 5)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    TextFieldBorde()
}
