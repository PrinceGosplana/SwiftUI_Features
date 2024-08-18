//
//  DynamicRoutingView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 17.08.2024.
//

import SwiftUI

enum Route: Hashable {
    case dashboard
    case detail(CustomerModel)
}

struct DynamicRoutingView: View {

    @State private var routes: [Route] = []

    var body: some View {
        NavigationStack(path: $routes) {
            VStack(spacing: 20) {
                Button("Login") {
                    Task {
                        // perform async call
                        try! await Task.sleep(for: .seconds(2))
                        // take user to dashboard screen
                        routes.append(.dashboard)
                    }
                }

                Button("Detail") {
                    Task {
                        routes.append(.detail(CustomerModel.mockCustomers.randomElement()!))
                    }
                }

            }.navigationDestination(for: Route.self) { route in
                switch route {
                case .dashboard:
                    EmptyView()
                case .detail(let customer):
                    CustomerDetailScreen(customer: customer)
                }
            }
        }
    }
}

#Preview {
    DynamicRoutingView()
}
