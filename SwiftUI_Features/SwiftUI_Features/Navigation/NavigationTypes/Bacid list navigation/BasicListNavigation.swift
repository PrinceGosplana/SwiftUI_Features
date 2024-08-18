//
//  BasicListNavigation.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 17.08.2024.
//

import SwiftUI

struct BasicListNavigation: View {
    var body: some View {
        NavigationStack {
            List(CustomerModel.mockCustomers) { customer in
                NavigationLink {
                    CustomerDetailScreen(customer: customer)
                } label: {
                    Text(customer.name)
                }
            }
        }
    }
}

#Preview {
    BasicListNavigation()
}
