//
//  NavigationBarHidden.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.11.2024.
//

import SwiftUI

struct NavigationBarHidden: View {
    
    @State private var isHidden = false
    
    var body: some View {
        NavigationStack {
            Toggle("Hide Nav Bar", isOn: $isHidden)
                .font(.title)
                .padding()
                .toolbar(isHidden ? .hidden : .visible)
                .navigationTitle("Hide Me")
        }
    }
}

#Preview {
    NavigationBarHidden()
}
