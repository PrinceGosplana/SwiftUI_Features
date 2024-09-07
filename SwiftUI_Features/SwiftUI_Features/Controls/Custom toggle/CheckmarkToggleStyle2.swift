//
//  CheckmarkToggleStyle2.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 07.09.2024.
//

import SwiftUI

struct CheckmarkToggleStyle2: ToggleStyle {
  func makeBody(configuration: Configuration) -> some View {
    LabeledContent {
      Capsule()
        .foregroundStyle(configuration.isOn ? .green : .gray)
        .frame(width: 54, height: 30, alignment: .center)
        .overlay {
          Circle()
            .foregroundStyle(.white)
            .padding(.all, 2)
            .overlay {
              Image(systemName: configuration.isOn ?  "checkmark" : "xmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .font(.title)
                .fontWeight(.black)
                .frame(width: 15, height: 15, alignment: .center)
                .foregroundStyle(configuration.isOn ? .green : .black)
                .drawingGroup()
            }
            .offset(x: configuration.isOn ? 12 : -12, y: 0)
            .animation(.bouncy, value: configuration.isOn)
        }
        .onTapGesture {
          configuration.isOn.toggle()
        }
        .accessibilityAddTraits(.isButton)
    } label: {
      configuration.label
    }
  }
}
