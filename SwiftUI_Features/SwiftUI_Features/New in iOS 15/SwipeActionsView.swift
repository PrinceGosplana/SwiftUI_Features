//
//  SwipeActionsView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 24.08.2024.
//

import SwiftUI

/// Swipe action is only available for the ListView. It performs certain actions when List Row swiped in the desired direction

struct SwipeActionsView: View {
    var body: some View {

        List {
            ForEach(1...20, id:\.self) {
                Text("User task \($0)")
                // Swipe actions
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button {

                        } label: {
                            Image(systemName: "house.fill")
                        }
                        // changing background color
                        .tint(.red)

                        Button {

                        } label: {
                            Image(systemName: "gearshape")
                        }
                        // changing background color
                        .tint(.cyan)
                    }

                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button {

                        } label: {
                            Image(systemName: "photo")
                        }
                        // changing background color
                        .tint(.indigo)
                    }
            }
        }
    }
}

#Preview {
    SwipeActionsView()
}
