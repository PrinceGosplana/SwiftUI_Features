//
//  PickerProgrammaticSelection.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.11.2024.
//

import SwiftUI

struct PickerProgrammaticSelection: View {
    @State private var favoriteState = 1
    var body: some View {
        VStack(spacing: 20) {
            
            Picker("States", selection: $favoriteState) {
                Text("California").tag(0)
                Text("Colorado").tag(1)
                Text("Montana").tag(2)
                Text("Utah").tag(3)
                Text("Vermont").tag(4)
            }
            .pickerStyle(.wheel)
            .padding(.horizontal)
            
            Button("Select Vermont") {
                withAnimation {
                    favoriteState = 4
                }
            }
            
        }
        .font(.title)
    }
}

#Preview {
    PickerProgrammaticSelection()
}
