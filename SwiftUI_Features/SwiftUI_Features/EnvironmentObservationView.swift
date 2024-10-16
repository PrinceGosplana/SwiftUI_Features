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

struct TestKey: PreferenceKey {
    static let defaultValue = false
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        fatalError()
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
