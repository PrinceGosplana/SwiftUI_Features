//
//  AlertPassDataInto.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 30.12.2024.
//

import SwiftUI

struct AlertData: Identifiable {
var id = UUID() // Conform to Identifiable
let title: String
let message: String
}

struct AlertPassDataInto: View {
    @State private var alertData: AlertData? = nil
    var body: some View {
        VStack(spacing: 20) {
            Text("You may need to pass data into your Alert. For this scenario, you use a different function to attach an Alert to the view.")
            Button("Show Alert with Data") {
                // 3. Making the Identifiable State var not nil will
                // trigger showing the alert
                alertData = AlertData(title: "Warning",
                                      message: "<field> is required")
                
            }
            Spacer()
        }
        // // 4. Attach alert to the view and observe the Identifiable
        //        State var for changes from nil to a non-nil value
        .alert(item: $alertData) { alertData in
            // 5. Return an Alert with your data
            Alert(title: Text(alertData.title),
                  message: Text(alertData.message))
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    AlertPassDataInto()
}
