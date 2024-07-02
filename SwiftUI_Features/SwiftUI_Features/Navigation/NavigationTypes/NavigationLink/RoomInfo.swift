//
//  RoomInfo.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 02.07.2024.
//

import SwiftUI

struct RoomInfo: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let image: Image

    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

extension RoomInfo {
    static let rooms = [
        RoomInfo(
            name: "House",
            image: Image(systemName: "house.fill")),
        RoomInfo(
            name: "Homekit",
            image: Image(systemName: "homekit")),
    ]
}
