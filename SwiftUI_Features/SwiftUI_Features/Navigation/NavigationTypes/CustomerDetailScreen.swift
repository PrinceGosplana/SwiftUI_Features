//
//  CustomerDetailScreen.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 17.08.2024.
//

import SwiftUI

struct CustomerDetailScreen: View {
    let customer: CustomerModel

    var body: some View {
        HStack(spacing: 10) {
            Text(customer.name)
                .font(.title.bold())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.orange)
    }
}

#Preview {
    CustomerDetailScreen(customer: CustomerModel.mockCustomers[0])
}
