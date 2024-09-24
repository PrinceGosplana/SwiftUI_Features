//
//  WiggleEffect.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 24.09.2024.
//

import SwiftUI

struct WiggleEffect: View {

    @State var notificationsEnabled = true
    @State var fill = 0.0
    @State private var value = 0
    
    var body: some View {

        SFIconSample {
            Image(systemName: "airpodspro.chargingcase.wireless.radiowaves.left.and.right.fill")
                .symbolEffect(.variableColor, isActive: true)
            /// wiggle and repeat will be available in iOS 18
//                .symbolEffect(.wiggle, options: .repeat(.continuous))
        }

        SFIconSample {
            Image(systemName: "bell.circle")
                .symbolEffect(.variableColor, isActive: notificationsEnabled)
            Button("Toggle Notifications") {
                withAnimation {
                    notificationsEnabled.toggle()
                }

            }
            .font(.body)
        }

        SFIconSample {
            Image(systemName: notificationsEnabled ? "bell" : "bell.slash")
                .symbolRenderingMode(.hierarchical)
                .contentTransition(.symbolEffect(.replace))
            Button("Toggle Notifications") {
                withAnimation {
                    notificationsEnabled.toggle()
                }
            }
            .font(.body)
        }
    }
}

#Preview {
    WiggleEffect()
}
