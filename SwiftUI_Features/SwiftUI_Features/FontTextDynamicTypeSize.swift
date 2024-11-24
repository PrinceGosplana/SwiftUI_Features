//
//  FontTextDynamicTypeSize.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.11.2024.
//

import SwiftUI

struct FontTextDynamicTypeSize: View {
    var body: some View {
        VStack(spacing: 20.0) {
            //        Set a range of type sizes your
            //        text can change within
            Text("My Header")
                .font(.largeTitle)
            Text("My Header Limited")
                .font(.largeTitle)
                .dynamicTypeSize(.large ... .xLarge)
        }
        .font(.title)
    }
}

#Preview {
    FontTextDynamicTypeSize()
}
