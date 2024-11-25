//
//  FontTextFormat.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 25.11.2024.
//

import SwiftUI

struct FontTextFormat: View {
    @State private var value = 12.34
    var body: some View {
        VStack(spacing: 20) {
            //    There is an initializer for the Text view that allows you to convert a nonstring type to a string with a specific format
            
            Text(value, format: .number)
            Text(value, format: .percent)
            //    These are format options when
            //    the value is numeric.
            Text(value, format: .currency(code: "GBP"))
        }
        .font(.title)
    }
}

#Preview {
    FontTextFormat()
}
