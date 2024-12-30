//
//  ActionSheetsPassDataInto.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 30.12.2024.
//

import SwiftUI

struct ActionSheetData: Identifiable {
    var id = UUID() // Conform to Identifiable
    let title: String
    let message: String
}

struct ActionSheetsPassDataInto: View {
    // 2. Create State var for the action sheet data
    @State private var actionSheetData: ActionSheetData? = nil
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Show ActionSheet with Data") {
                // 3. Making the Identifiable State var not nil will trigger showing the action
                self.actionSheetData = ActionSheetData(title: "Options", message: "Choose an option:")
            }
        }
        // 4. Attach action sheet to view and observe the Identifiable State var for changes from nil to a non-nil value
        .actionSheet(item: $actionSheetData) { actionSheetMessage in
            // 5. Return an ActionSheet with your data
            ActionSheet(title: Text(actionSheetMessage.title),
                        message: Text(actionSheetMessage.message))
        }
    }
}

#Preview {
    ActionSheetsPassDataInto()
}
