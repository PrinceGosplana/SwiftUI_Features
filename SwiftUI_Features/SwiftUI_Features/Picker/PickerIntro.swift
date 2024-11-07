//
//  PickerIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.11.2024.
//

import SwiftUI

struct PickerIntro: View {
    @State private var favoriteState = 1
    
    var body: some View {
        VStack(spacing: 20) {
            
            Picker("States", selection: $favoriteState) {
                Text("California").tag(0)
                Text("Utah").tag(1)
                Text("Vermont").tag(2)
            }
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    PickerIntro()
}
