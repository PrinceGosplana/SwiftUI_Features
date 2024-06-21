//
//  ClaimButtonViewModel.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.06.2024.
//

import Observation
import UIKit

@Observable class ViewModel {
    var claimButtonConfiguration: ClaimButton.Configuration = .normal

    // Testing function
    func claimCoupon() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.claimButtonConfiguration = .loading
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.claimButtonConfiguration = .confirmed
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.claimButtonConfiguration = .disabled
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        self.claimButtonConfiguration = .normal
                    }
                }
            }
        }
    }
}
