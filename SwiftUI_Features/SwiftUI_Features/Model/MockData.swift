//
//  MockData.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 31.03.2024.
//

import SwiftUI

struct MockData {
    static var colors: [Color] {
        var array: [Color] = []
        for _ in 0..<30 { array.append(Color.random)}
        return array
    }
}
