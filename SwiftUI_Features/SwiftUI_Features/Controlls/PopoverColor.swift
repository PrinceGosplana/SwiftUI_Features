//
//  PopoverColor.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.01.2025.
//

import SwiftUI

struct PopoverColor: View {
    @State private var showPopover = false
    @State private var articleName = ""
    var body: some View {
    VStack(spacing: 20) {
    Text("You can add color to the Popover but be warned, you have to get the color to touch the side of the popup so the arrow will use it.")
    HStack {
    Text("Article Name")
    TextField("Enter Your Article Name", text: $articleName)
    .textFieldStyle(.roundedBorder)
    Button(action: { showPopover = true }) {
    Image(systemName: "exclamationmark.triangle.fill")
    .foregroundStyle(.yellow)
    }
    .popover(isPresented: $showPopover) {
    Text("Please update the article name so it is greater than 5 characters.")
    .padding(20)
    .frame(width: 400, height: 165)
    .background(Color.yellow)
    }
    }
    .padding()
    Spacer()
    }
    .padding(.top)
    .font(.title)
    }
}

#Preview {
    PopoverColor()
}
