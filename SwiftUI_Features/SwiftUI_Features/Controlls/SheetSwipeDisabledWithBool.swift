//
//  SheetSwipeDisabledWithBool.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.01.2025.
//

import SwiftUI

struct SheetSwipeDisabledWithBool: View {
    @State private var presentingSheet = false
    var body: some View {
        Button("Show Sheet") {
            presentingSheet = true
        }
        .sheet(isPresented: $presentingSheet) {
            AgreementView(title: "Sheet",
                          subtitle: "Swipe Down Disabled with Bool")
        }.font(.title)
    }
}
struct AgreementView: View {
    let title: String
    let subtitle: String
    @State private var agree = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Enable/disable swipe down with interactiveDismissDisabled and a bool.")
                .padding(.top)
            Spacer()
            Toggle(isOn: $agree, label: { Text("I Agree") })
                .toggleStyle(.button)
                .tint(.red)
                .padding(.bottom)
        }
        .interactiveDismissDisabled(!agree)
        //When the boolean is true, you cannot swipe down to dismiss.
    }
}

#Preview {
    SheetSwipeDisabledWithBool()
}
