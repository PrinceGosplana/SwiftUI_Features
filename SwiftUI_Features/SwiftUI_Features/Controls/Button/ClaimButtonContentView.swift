//
//  ClaimButtonContentView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.06.2024.
//

import SwiftUI

struct ClaimButtonContentView: View {
    @State private var viewModel = ViewModel()

    var body: some View {
        VStack {
            ClaimButton(configuration: viewModel.claimButtonConfiguration) {
                viewModel.claimCoupon()
            }
        }
        .padding()
    }

}

#Preview {
    ClaimButtonContentView()
}
