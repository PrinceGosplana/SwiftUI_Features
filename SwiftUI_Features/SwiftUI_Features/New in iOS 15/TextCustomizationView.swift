//
//  TextCustomizationView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 30.08.2024.
//

import SwiftUI

struct TextCustomizationView: View {
    var body: some View {
        VStack {
            /// ! Mark down
            /// 2 Italic
            /// 3 Links
            Text("""
Hello ***World***
Please, watch
[Trout and Coffee](https://www.youtube.com/@TroutandCoffee)
""")
            /// Custom formatter for date
            Text(Date().formatted(date: .abbreviated, time: .standard))
        }
    }
}

#Preview {
    TextCustomizationView()
}
