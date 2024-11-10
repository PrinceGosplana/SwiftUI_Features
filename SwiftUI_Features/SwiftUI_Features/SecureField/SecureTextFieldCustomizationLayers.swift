//
//  SecureTextFieldCustomizationLayers.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 10.11.2024.
//

import SwiftUI

struct SecureTextFieldCustomizationLayers: View {
    
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("SecureField")
                .font(.largeTitle)
            Text("Customization Layers")
                .font(.title)
                .foregroundStyle(.gray)
            Text("You can also add a background to the SecureField. It's all the same idea: adjust the layers.")
            
            SecureField("password", text: $password)
                .foregroundStyle(Color.white)
                .frame(height: 40)
                .padding(.horizontal)
                .background(
                    Capsule()
                        .foregroundStyle(.purple)
                )
                .padding(.horizontal)
            Image(.previewSample7)
                .resizable()
                .scaledToFit()
                .frame(height: 260)
            Text("The highlighted layer in that image is the actual text field layer of the view.")
                .font(.title)
                .padding(.horizontal)
        }
    }
}

#Preview {
    SecureTextFieldCustomizationLayers()
}
