//
//  PopoverFromBool.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 01.01.2025.
//

import SwiftUI

struct PopoverFromBool: View {
    @State private var showPopover = false
    var body: some View {
        ZStack {
            Color(.indigo)
            Button(action: {
                self.showPopover = true
            }, label: {
                Image(systemName: "questionmark.circle.fill")
                    .font(.largeTitle)
            }).popover(isPresented: $showPopover, arrowEdge: .top) {
                // This will show in the Popover
                VStack(spacing: 20) {
                    Text("Popover")
                        .font(.largeTitle)
                    Text("Show from Bool")
                        .font(.title).foregroundStyle(.gray)
                    Text("By changing the State variable, you can trigger the Popover to show")
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    PopoverFromBool()
}
