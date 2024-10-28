//
//  LinkView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.10.2024.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        VStack(spacing: 20) {
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
            
            Link("Go to Apple", destination: URL(string: "https://www.apple.com")!)
            .buttonStyle(.bordered)
            
            Link("Call Now", destination: URL(string: "tel:8005551234")!)
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
            Link("Email Me", destination: URL(string: "mailto:myemail@swiftui.com")!)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .tint(.mint)
            
            Link("Message Me", destination: URL(string: "sms:+18885551212&body=Hello")!)
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    LinkView()
}
