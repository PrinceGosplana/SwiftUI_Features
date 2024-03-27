//
//  AutomaticCountingView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 27.03.2024.
//

import SwiftUI

struct AutomaticCountingView: View {

    @State private var count = 1

    var body: some View {
        Button("Add") { count += 1 }
        Button("Remove") { count -= 1 }
        Text("^[\(count) Person](inflect: true)")
            .padding()
    }
}

#Preview {
    AutomaticCountingView()
}
