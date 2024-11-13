//
//  SegmentedControlColors.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 13.11.2024.
//

import SwiftUI

struct SegmentedControlColors: View {
    @State private var selection = 2
    var body: some View {
        VStack(spacing: 60) {
            Picker("", selection: $selection) {
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
            }
            .pickerStyle(.segmented)
            .background(Color.pink)
            //    You can change the color of segmented
            //    controls by using the background modifier.
            Picker("", selection: $selection) {
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
            }
            .pickerStyle(.segmented)
            .background(Color.pink, in: RoundedRectangle(cornerRadius: 8))
            //    Use a rounded rectangle in your
            //    background to better fit the existing picker.
            
            Picker("", selection: $selection) {
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
            }
            .pickerStyle(.segmented)
            .background(Color.accentColor.opacity(0.6), in: RoundedRectangle(cornerRadius: 8))
        }
        .padding(.horizontal)
    }
}

#Preview {
    SegmentedControlColors()
}
