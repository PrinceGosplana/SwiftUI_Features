//
//  HomeGlassView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 19.03.2024.
//

import SwiftUI

struct HomeGlassView: View {
    
    /// View properties
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            /// Login View
            VStack(spacing: 12) {
                Text("Welcome!")
                    .font(.title.bold())
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Username")
                        .font(.callout.bold())
                    
                    CustomTF(hint: "iJustine", value: $username)
                    
                    Text("Pasword")
                        .font(.callout.bold())
                        .padding(.top, 15)
                    
                    CustomTF(hint: "******", value: $password, isPassword: true)
                    
                    Button(action: {}, label: {
                        Text("Login")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundStyle(.BG)
                            .padding(.vertical, 12)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .clipShape(.rect(cornerRadius: 8, style: .continuous))
                    })
                    .padding(.top, 30)
                }
                
                /// Other login options
                HStack(spacing: 12) {
                    Button(action: {}, label: {
                        Label("Email", systemImage: "envelope.fill")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(.white.opacity(0.2))
                            .clipShape(.rect(cornerRadius: 8, style: .continuous))
                    })
                    
                    Button(action: {}, label: {
                        Label("Apple", systemImage: "applelogo")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(.white.opacity(0.2))
                            .clipShape(.rect(cornerRadius: 8, style: .continuous))
                    })
                }
                .foregroundStyle(.white)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Rectangle()
                .fill(.BG)
                .ignoresSafeArea()
        }
    }
    
    /// Custom Text Field
    @ViewBuilder
    func CustomTF(hint: String, value: Binding<String>, isPassword: Bool = false) -> some View {
        Group {
            if isPassword {
                SecureField(hint, text: value)
            } else {
                TextField(hint, text: value)
            }
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 15)
        .background(.white.opacity(0.12))
        .clipShape(.rect(cornerRadius: 8, style: .continuous))
    }
}

#Preview {
    GlassBackgroundView()
}
