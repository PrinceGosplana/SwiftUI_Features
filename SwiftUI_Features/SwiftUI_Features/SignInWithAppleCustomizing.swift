//
//  SignInWithAppleCustomizing.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 16.11.2024.
//
import AuthenticationServices
import SwiftUI

struct SignInWithAppleCustomizing: View {
    var body: some View {
        ZStack {
            Color("ColorBackground")
                .ignoresSafeArea()
            VStack(spacing: 15) {
                
                VStack {
                    Text("black")
                    SignInWithAppleButton(.signIn,
                                          onRequest: { request in },
                                          onCompletion: { result in })
                    .signInWithAppleButtonStyle(.black)
                    .frame(height: 50)
                    Text("whiteOutline")
                    SignInWithAppleButton(.continue,
                                          onRequest: { request in },
                                          onCompletion: { result in })
                    .signInWithAppleButtonStyle(.whiteOutline)
                    .frame(height: 50)
                    Text("white")
                    SignInWithAppleButton(.signUp,
                                          onRequest: { request in },
                                          onCompletion: { result in })
                    .signInWithAppleButtonStyle(.white)
                    .frame(height: 50)
                    .shadow(radius: 8, y: 12)
                }
                .padding(.horizontal)
            }
            .font(.title)
        }
    }
}

#Preview {
    SignInWithAppleCustomizing()
}
