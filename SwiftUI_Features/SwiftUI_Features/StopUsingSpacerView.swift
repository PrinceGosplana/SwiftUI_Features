//
//  StopUsingSpacerView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 01.05.2024.
//

import SwiftUI

struct UsingSpacerView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                WriteButton()
                    .padding()
            }
        }
    }
}

struct StopUsingSpacerView: View {
    var body: some View {
        WriteButton()
            .padding()
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .bottomTrailing
            )
    }
}

#Preview {
    StopUsingSpacerView()
}

struct WriteButton: View {
    var body: some View {
        Color(.systemBlue)
            .overlay {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .scaledToFill()
                    .foregroundStyle(.white)
            }
            .frame(width: 44, height: 44)
            .background(Color(.systemBlue))
            .clipShape(Circle())
    }
}
