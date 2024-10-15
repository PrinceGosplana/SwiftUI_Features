//
//  EnvironmentObservationView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 15.10.2024.
//

import SwiftUI

struct Nested: View {
    @Environment(\.dynamicTypeSize.isAccessibilitySize) var env
    
    var body: some View {
        let _ = print("Nested \(Date.timeIntervalSinceReferenceDate)")
        Text("\(env)")
    }
}

struct EnvironmentObservationView: View {
    var body: some View {
        VStack {
            Nested()
        }
        .padding()
    }
}

#Preview {
    EnvironmentObservationView()
}
