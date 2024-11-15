//
//  SignInWithAppleIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 15.11.2024.
//

import AuthenticationServices
import SwiftUI

struct SignInWithAppleIntro: View {
    var body: some View {
        VStack(spacing: 15) {
            
            VStack {
                Text("Sign In")
                SignInWithAppleButton(.signIn,
                                      onRequest: { request in },
                                      onCompletion: { result in })
                
                .frame(height: 50)
                
                Text("Continue")
                SignInWithAppleButton(.continue,
                                      onRequest: { request in },
                                      onCompletion: { result in })
                .frame(height: 50)
                
                Text("Sign Up")
                SignInWithAppleButton(.signUp,
                                      onRequest: { request in },
                                      onCompletion: { result in })
                .frame(height: 50)
                .shadow(radius: 8, y: 12)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    SignInWithAppleIntro()
}
