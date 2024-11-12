//
//  NoSegmentSelected.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 12.11.2024.
//

import SwiftUI

struct NoSegmentSelected: View {
    
    @State private var selection = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Segmented Control (Picker)").font(.largeTitle)
            Text("No Segment Selected")
                .font(.title).foregroundStyle(.gray)
            Text("This segmented control will have nothing selected because the default state variable does not match any of the segment tag values.")
            
            Text("How many meals do you eat?")
                .foregroundStyle(.gray)
                .font(.title)
            Picker("", selection: $selection) {
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
                Text("More").tag(4)
            }
            .pickerStyle(.segmented)
            .background(RoundedRectangle(cornerRadius: 8)
                .stroke(Color.red, lineWidth: selection == 0 ? 1 : 0))
            .padding()
            Text("The red outline will go away once a selection is made.")
        }
    }
}

#Preview {
    NoSegmentSelected()
}
