//
//  AlertChangeBack.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 30.12.2024.
//

import SwiftUI

struct AlertChangeBack: View {
    @State private var presentingAlert = false
    var body: some View {
        VStack(spacing: 20) {
            Text("It is good to know that SwiftUI will automatically change the  property you use to show the alert back to its original value.")
            Button("Show Alert") {
                presentingAlert = true
            }
            Text("presentingAlert: ") +
            Text(presentingAlert.description).bold()
        }
        .font(.title)
        //    When you watched the video, you will see the presentingAlert property change automatically when the alert is closed.
        .alert(isPresented: $presentingAlert) {
            Alert(title: Text("Look at the Boolean"))
        }
    }
}

#Preview {
    AlertChangeBack()
}
