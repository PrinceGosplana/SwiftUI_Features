//
//  KeyboardCheckView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 30.06.2024.
//

import SwiftUI

struct Thing {
    var a = false
    var b = false
}

//struct Subview: View {
//    @Environment(Thing.self) var value
//    var body: some View {
//        Text("Value is \(value.a ? "true" : "false")")
//            .foregroundStyle(Color.random)
//    }
//}
//
//struct KeyboardCheckView: View {
//    @State var thing = Thing()
//
//    var body: some View {
//        VStack {
//            Subview()
//                .environment(\.myCustomValue, thing)
//            Button("Change A") { thing.a.toggle()}
//            Button("Change B") { thing.b.toggle()}
//        }
//    }
//}
//
//#Preview {
//    KeyboardCheckView()
//}
