//
//  LinkView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.10.2024.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        VStack {
            Link("Go to Apple", destination: URL(string: "https://www.apple.com")!)
            
            Link(destination: URL(string: "https://www.apple.com")!) {
                HStack(spacing: 20.0) {
                    Image(systemName: "applelogo")
                    Text("Go to Apple")
                }
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(Capsule()
                    .fill(Color.blue)
                    .shadow(radius: 8, y: 18))
            }
        }
    }
}

#Preview {
    LinkView()
}
