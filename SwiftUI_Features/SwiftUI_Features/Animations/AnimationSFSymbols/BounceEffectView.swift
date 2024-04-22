//
//  BounceEffectView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 09.04.2024.
//

import SwiftUI

struct BounceEffectView: View {

    @State var trigger = 0

    var body: some View {
        VStack {
            ExtractedView(title: "Bounce", subtitle: "Discrete")

            Spacer()

            Image(systemName: "wifi.exclamationmark")
                .scaleEffect(4)
                .symbolEffect(.bounce, value: trigger)

            Button("Trigger after tap") {
                trigger += 1
            }
            .padding(.top, 50)

            Spacer()
        }
    }
}

#Preview {
    BounceEffectView()
}
