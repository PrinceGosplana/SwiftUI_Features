//
//  SFIconSample.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 24.09.2024.
//

import SwiftUI

struct SFIconSample<T: View>: View {

    let content: T

    init(@ViewBuilder content: () -> T) {
        self.content = content()
    }

    var body: some View {
        VStack {
            content
                .font(.system(size: 48))
                .padding(24)

            Divider()
        }
    }
}
