//
//  SecureTextFieldCustomizations.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 10.11.2024.
//

import SwiftUI

struct SecureTextFieldCustomizations: View {
    
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        Text("Use a ZStack to put a RoundedRectangle behind a SecureField with a plain textfieldStyle.")
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(.purple)
            TextField("user name", text: $userName)
                .foregroundStyle(Color.white)
                .padding(.horizontal)
        }
        .frame(height: 40)
        .padding(.horizontal)
        Text("Or overlay the SecureField on top of another view or shape.")
        
        RoundedRectangle(cornerRadius: 8)
            .foregroundStyle(.purple)
            .overlay(
                SecureField("password", text: $password)
                    .foregroundStyle(Color.white)
                    .padding(.horizontal)
            )
            .frame(height: 40)
            .padding(.horizontal)
    }
}

#Preview {
    SecureTextFieldCustomizations()
}
