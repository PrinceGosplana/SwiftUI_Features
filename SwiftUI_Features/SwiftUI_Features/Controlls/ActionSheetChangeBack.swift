//
//  ActionSheetChangeBack.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 30.12.2024.
//

import SwiftUI

struct ActionSheetChangeBack: View {
    @State private var presentingActionSheet = false
    var body: some View {
        VStack(spacing: 20) {
            Text("It is good to know that SwiftUI will automatically change the property you use to show the action sheet back to its original value.")
            Button("Show ActionSheet") {
                presentingActionSheet = true
            }
            Text("presentingActionSheet: ") +
            Text(presentingActionSheet.description).bold()
        }
        .font(.title)
        .actionSheet(isPresented: $presentingActionSheet) {
            ActionSheet(title: Text("Look at the Boolean"))
        }
    }
}

#Preview {
    ActionSheetChangeBack()
}
