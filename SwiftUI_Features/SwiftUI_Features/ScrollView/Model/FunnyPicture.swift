//
//  FunnyPicture.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 15.08.2024.
//

import SwiftUI

struct FunnyPicture: Hashable, Identifiable {
    var id: Self { self }
    let name: String
    let image: String
}

extension FunnyPicture {
    static let images: [FunnyPicture] = [
        .init(name: "Bunny", image: "previewSample1"),
        .init(name: "Pigeon", image: "previewSample2"),
        .init(name: "Bug", image: "previewSample3"),
        .init(name: "Cat", image: "previewSample4"),
        .init(name: "Dog", image: "previewSample5"),
        .init(name: "Rat", image: "previewSample6"),
        .init(name: "Racoon", image: "previewSample7"),
        .init(name: "Mouse", image: "previewSample8"),
    ]
}
