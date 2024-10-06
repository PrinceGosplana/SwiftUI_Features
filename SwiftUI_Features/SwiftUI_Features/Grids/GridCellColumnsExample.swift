//
//  GridCellColumnsExample.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.10.2024.
//

import SwiftUI

struct GridCellColumnsExample: View {
    var body: some View {
        Grid {
            GridRow {
                Color.green.opacity(0.3)
                    .gridCellColumns(3)
            }
            GridRow {
                Color.cyan.opacity(0.3)
                    .gridCellColumns(2)
                Color.mint.opacity(0.3)
            }
            GridRow {
                Color.red.opacity(0.3)
                Color.orange.opacity(0.3)
                Color.yellow.opacity(0.3)
            }
            GridRow {
                Color.indigo.opacity(0.3)
                Color.purple.opacity(0.3)
                    .gridCellColumns(2)
            }
            GridRow {
                Color.indigo.opacity(0.3)
                    .gridCellColumns(2)
                Color.purple.opacity(0.3)
            }
        }
    }
}

#Preview {
    GridCellColumnsExample()
}
