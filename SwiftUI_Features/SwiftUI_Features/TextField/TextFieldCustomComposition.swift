//
//  TextFieldCustomComposition.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.12.2024.
//

import SwiftUI

struct TextFieldCustomComposition: View {
    @State private var textFieldData = ""
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass").foregroundStyle(.gray)
                TextField("first name", text: $textFieldData)
                Image(systemName: "slider.horizontal.3")
            }
            Divider()
        }
        .padding()
        
        HStack {
            Image(systemName: "envelope")
                .foregroundStyle(.gray).font(.headline)
            TextField("email address", text: $textFieldData)
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
        .padding()
        
        HStack {
            TextField("country", text: $textFieldData)
            Button(action: {}) {
                Image(systemName: "chevron.right").padding(.horizontal)
            }
            .tint(.orange)
        }
        .padding()
        .overlay(Capsule().stroke(Color.gray, lineWidth: 1))
        .padding()
    }
}

#Preview {
    TextFieldCustomComposition()
}
