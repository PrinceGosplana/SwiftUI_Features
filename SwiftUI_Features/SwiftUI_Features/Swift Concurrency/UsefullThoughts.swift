//
//  UsefullThoughts.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 30.06.2024.
//

import SwiftUI
/*
// MARK: - Instead of GCD asyncAfter
Task {
    try? await Task.sleep(nanoseconds: 5 * NSEC_PER_SEC)
    // ...
}

// MARK: - Waiting for some resource
Task {
    while di == nil {
        Task.yield()
    }
    // ...
}

// MARK: - Fake pause
Task {
    async let sleep: Void = await Task.sleep(nanoseconds: 2 * NSEC_PER_SEC)
    async let data = await loadData()

    try? await (sleep, data)
}
*/
