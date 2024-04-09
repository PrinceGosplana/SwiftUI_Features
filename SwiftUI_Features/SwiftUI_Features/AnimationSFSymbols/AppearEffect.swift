//
//  AppearEffect.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 09.04.2024.
//

import SwiftUI

struct AppearEffect: View {

    @State var isHidden = false
    @State var isHiddenTransition = false

    var body: some View {
        VStack {
            ExtractedView(title: "Appear", subtitle: "Indefinite, Transition")

            Spacer()
            HStack(spacing: 80) {

                VStack(spacing: 50) {

                    Image(systemName: "wifi.exclamationmark")
                        .scaleEffect(4)
                        .symbolEffect(.appear, isActive: isHidden)

                    Button(isHidden ? "Hidden" : "Visible") {
                        isHidden.toggle()
                    }
                }

                VStack(spacing: 50) {

                    if !isHiddenTransition {
                        Image(systemName: "wifi.exclamationmark")
                            .scaleEffect(4)
                            .transition(.symbolEffect(.appear))
                    }

                    Button(isHiddenTransition ? "Hidden" : "Visible") {
                        isHiddenTransition.toggle()
                    }
                }
            }
            .frame(minWidth: 100, maxWidth: 250)

            Spacer()
        }
    }
}

#Preview {
    AppearEffect()
}
