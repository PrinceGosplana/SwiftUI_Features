//
//  ActionSheetButtons.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 30.12.2024.
//

import SwiftUI

struct ActionSheetButtons: View {
    @State private var presentingActionSheet = false
    var actionSheet =
    ActionSheet(
        title: Text("Action Sheet Title"),
        buttons: [
            .default(
                Text("Default Button")
                    .font(.title)
                    .foregroundStyle(.purple)
                , action: {
                    // Default Button code
                }),
            .destructive(Text("Destructive Button"), action: {
                // Destructive Button code
            }),
            .cancel(Text("Exit"), action: {
                // Cancel Button code
            })
        ])
    
    var body: some View {
        VStack(spacing: 20) {
            Text("The buttons are not customizable. You use the Text view for inside the button but you cannot even customize this. You can change the text of the Cancel button.")
            
            Button("Show ActionSheet") {
                self.presentingActionSheet = true
            }
            Spacer()
        }.actionSheet(isPresented: $presentingActionSheet) {
            self.actionSheet
        }
    }
}

#Preview {
    ActionSheetButtons()
}
