//
//  PopoverSize.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.01.2025.
//

import SwiftUI

struct PopoverSize: View {
    @State var showingPopover = false
    var body: some View {
        GeometryReader { gp in
            VStack(spacing: 20) {
                Text("Sometimes the popover size doesn't quite look the way you want. You can use add a flexible frame to the popover content for better rendering.")
                Spacer()
                HStack {
                    Spacer()
                    Button(action: { showingPopover.toggle() }) {
                        Image(systemName: "plus.circle")
                    }
                    .popover(isPresented: $showingPopover) {
                        List(0..<100) {
                            Text("\($0)")
                        }
                        .frame(minWidth: gp.size.width/2,
                               minHeight: gp.size.height/2)
                    }
                    .padding(30)
                }
            }
            .font(.title)
        }
    }
}

#Preview {
    PopoverSize()
}
