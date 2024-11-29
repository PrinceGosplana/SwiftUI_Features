//
//  FontText_Currency.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.11.2024.
//

import SwiftUI

struct FontText_Currency: View {
    @Environment(\.locale) private var locale: Locale
    @State private var amount = 36.72
    //    Use the format parameter with
    //    different currency codes to show the
    //    appropriate currency symbol.
    var body: some View {
        VStack(spacing: 10) {
            Text(amount, format: .currency(code: "USD"))
            Text(amount, format: .currency(code: "EUR"))
            Text(amount, format: .currency(code: "BRL"))
            Text(amount, format: .currency(code: "GBP"))
            Text(amount, format: .currency(code: "JPY"))
            Text(amount, format: .currency(code: "INR"))
            Text(amount, format: .currency(code: (locale.currency?.identifier ?? "USD")))
        }
        .font(.title)
    }
}

#Preview {
    FontText_Currency()
}
