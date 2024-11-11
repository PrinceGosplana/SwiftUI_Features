//
//  SecureFieldKeyboardSafeArea.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 11.11.2024.
//

import SwiftUI

struct SecureFieldKeyboardSafeArea: View {
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image(.donut)
            Spacer()
            
            TextField("user name", text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            SecureField("password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    SecureFieldKeyboardSafeArea()
}
