//
//  SignInWithAppleSizeChanges.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 16.11.2024.
//

import AuthenticationServices
import SwiftUI

struct SignInWithAppleSizeChanges: View {
    var body: some View {
        VStack(spacing: 20) {
            
            VStack {
                SignInWithAppleButton(.signIn, onRequest: { request in },
                                      onCompletion: { result in })
                .frame(width: 50, height: 50)
                SignInWithAppleButton(.continue, onRequest: { request in },
                                      onCompletion: { result in })
                .frame(width: 100, height: 100)
                SignInWithAppleButton(.signIn, onRequest: { request in },
                                      onCompletion: { result in })
                .frame(width: 200, height: 50)
                SignInWithAppleButton(.signIn, onRequest: { request in },
                                      onCompletion: { result in })
                .frame(height: 150)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    SignInWithAppleSizeChanges()
}
