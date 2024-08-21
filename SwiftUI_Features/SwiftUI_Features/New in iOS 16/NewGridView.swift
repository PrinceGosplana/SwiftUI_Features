//
//  NewGridView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.08.2024.
//

import SwiftUI

struct NewGridView: View {
    var body: some View {
        Grid {
            /*
            GridRow {
                Color.red
                Color.orange
                Color.blue
            }

            GridRow {
                Color.indigo
                    .frame(width: 100, height: 100)

                Color.yellow
                    .frame(width: 30, height: 30)
                // MARK: We can declare custom cell size
                    .gridCellColumns(1)
                // MARK: set cell anchors
                    .gridCellAnchor(.bottomTrailing)
            }
            */

            GridRow {
                Color.indigo
                    .frame(width: 30, height: 30)
                Color.indigo
                    .frame(width: 30, height: 30)
                Color.indigo
                    .frame(width: 30, height: 30)
            }
            Divider()
                .background(.red)
            // it will take only the required size
                .gridCellUnsizedAxes(.horizontal)
            GridRow {
                Color.blue
                    .frame(width: 30, height: 30)
            }
        }
        .frame(height: 200)
    }
}

#Preview {
    NewGridView()
}
