//
//  AlertPresentingWithBool.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 30.12.2024.
//

import SwiftUI

struct AlertPresentingWithBool: View {
    @State private var presentingAlert = false
    var body: some View {
        VStack(spacing: 20) {
            Text("By changing a State variable, you can trigger the Alert to show.")
            Button("Show Alert") {
                // 2. Change the State variable to trigger presenting
                // the alert
                self.presentingAlert = true
            }
            Spacer()
            // 3. Use the alert function to listen to the State variable for changes and return an Alert object when true
        }
        .alert(isPresented: $presentingAlert) { () -> Alert in
            Alert(title: Text("Title of the Alert"))
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    AlertPresentingWithBool()
}
