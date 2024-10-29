//
//  StaticListView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.10.2024.
//

import SwiftUI

struct StaticListView: View {
    var body: some View {
        List {
            Text("Line One")
            Text("Line Two")
            Text("Line Three")
            Image(.cola)
                .resizable()
                .scaledToFit()
            Button("Click Here", action: {})
                .foregroundStyle(.green)
            HStack {
                Spacer()
                Text("Centered Text")
                Spacer()
            }.padding()
        }
        .font(.title)
    }
}

#Preview {
    StaticListView()
}
