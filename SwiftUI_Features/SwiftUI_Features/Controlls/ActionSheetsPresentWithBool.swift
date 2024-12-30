//
//  ActionSheetsPresentWithBool.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 30.12.2024.
//

import SwiftUI

struct ActionSheetsPresentWithBool: View {
    @State private var presentingActionSheet = false
    var body: some View {
        VStack(spacing: 20) {
            Text("ActionSheet")
                .font(.largeTitle)
            Text("Presenting with Bool")
                .font(.title)
                .foregroundStyle(.gray)
            
            Button("Show ActionSheet") {
                // 2. Change the State variable to trigger presenting the action sheet
                presentingActionSheet = true
            }
            // 3. Use the actionSheet function to listen to the State variable for changes and return an ActionSheet object when true
        }.actionSheet(isPresented: $presentingActionSheet) {
            // Remember, the return keyword is optional for single expressions
            ActionSheet(title: Text("My Action Sheet"))
        }
    }
}

#Preview {
    ActionSheetsPresentWithBool()
}
