//
//  CustomerModel.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 17.08.2024.
//

import Foundation

struct CustomerModel: Hashable, Identifiable {
    let id = UUID()
    let name: String
}

extension CustomerModel {
    static let mockCustomers: [CustomerModel] = [
        .init(name: "John Doe"),
        .init(name: "Ross Geller"),
        .init(name: "Joseph Francis \"Joey\" Tribbiani Jr"),
        .init(name: "Monica E. Geller"),
        .init(name: "Phoebe Buffay-Hannigan"),
        .init(name: "Chandler Muriel Bing"),
        .init(name: "Rachel Karen Green")
    ]
}
