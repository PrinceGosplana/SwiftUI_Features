//
//  PickerWithEnum.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.11.2024.
//

import SwiftUI

struct PickerWithEnum: View {
    
    enum EyeColor: String, Identifiable, CaseIterable {
        var id: Self { self }
        case unspecified = "Unspecified"
        case blue = "Blue"
        case brown = "Brown"
        case hazel = "Hazel"
    }
    
    @State private var selectedEyeColor = EyeColor.unspecified
    
    var body: some View {
        Form {
            Picker("Eye Color", selection: $selectedEyeColor) {
                ForEach(EyeColor.allCases) { color in
                    Text(color.rawValue)
                }
            }
        }
    }
}

#Preview {
    PickerWithEnum()
}
