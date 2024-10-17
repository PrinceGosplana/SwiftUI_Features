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
        let new = nextValue()
        print("Reduce", value, new)
        value = new
    }
}
struct EnvironmentObservationView: View {
    @State var foo = false
    
    var body: some View {
        VStack {
            ZStack {
                Text("Hi")
                    .id("")
            }
            Color.blue
                .preference(key: TestKey.self, value: true)
        }
        .padding()
        .onPreferenceChange(TestKey.self, perform: { value in
            print("On change: \(value)")
        })
    }
}

#Preview {
    EnvironmentObservationView()
}
