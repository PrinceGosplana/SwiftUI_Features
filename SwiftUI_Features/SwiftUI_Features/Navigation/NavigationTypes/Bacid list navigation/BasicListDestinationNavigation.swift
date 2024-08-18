//
//  BasicListDestinationNavigation.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 17.08.2024.
//

import SwiftUI

struct BasicListDestinationNavigation: View {
    var body: some View {
        NavigationStack {
            List(CustomerModel.mockCustomers) { customer in
                NavigationLink(customer.name, value: customer)
            }
            .navigationDestination(for: CustomerModel.self) { customer in
                CustomerDetailScreen(customer: customer)
            }
        }
    }
}

#Preview {
    BasicListDestinationNavigation()
}
