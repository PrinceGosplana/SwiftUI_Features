//
//  HideAndShowLabelComponents.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.10.2024.
//

import SwiftUI

struct HideAndShowLabelComponents: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Label("Automatic", systemImage: "camera.badge.ellipsis")
                .labelStyle(.automatic)
            Label("Icon Only", systemImage: "camera.badge.ellipsis")
                .labelStyle(.iconOnly)
            Label("Title Only", systemImage: "camera.badge.ellipsis")
                .labelStyle(.titleOnly)
            Label("Title & Icon", systemImage: "camera.badge.ellipsis")
                .labelStyle(.titleAndIcon)
            
            VStack(spacing: 24.0) {
                LabeledContent("Label", value: "Value")
                LabeledContent("Label") {
                    Label("Value", systemImage: "camera.macro")
                }
                LabeledContent("Label", value: 55, format: .percent)
                LabeledContent {
//  With LabeledContent, you provide your own custom Label and content. It’s really like a template that will get handled just like other controls indifferent layoutsituations.
                    Text("Value")
                        .font(.title.weight(.thin))
                } label: {
                    Text("Label")
                        .fontWeight(.bold)
                }
            }
            .padding()
            
//            Be careful of how much content you add. As it gets bigger, it will start to collide with the label.
            Form {
                LabeledContent("Opt in to") {
                    GroupBox {
                        Toggle("Emails", isOn: .constant(false))
                        Toggle("Texts", isOn: .constant(true))
                        
                    }
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    HideAndShowLabelComponents()
}
