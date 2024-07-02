//
//  StructuredConcurrency.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 30.06.2024.
//

import Foundation

/*
// load all images in parallel
Task {
    async let image1 = await loadImage(id: 1)
    async let image2 = await loadImage(id: 2)
    async let image3 = await loadImage(id: 3)
    async let image4 = await loadImage(id: 4)

    // wait for all and put them into database
    await saveToDB([image1, image2, image3, image4])
}

// Task group
Task {
    let images = await withTaskGroup(of: Data.self) { group -> [Data] in
        for i in 1...4 {
            group.addTask {
                await loadImage(id: i)
            }
        }

        var result = [Data]()
        for await value in group {
            result.append(value)
        }
        return result
    }
    saveToDB(images)
}

Task {
    // run 4 undepended tasks
    let image1 = Task { await loadImage(id: 1) }
    let image2 = Task { await loadImage(id: 2) }
    let image3 = Task { await loadImage(id: 3) }
    let image4 = Task { await loadImage(id: 4) }

    // waiting for result
    await (image1.value, image2.value, image3.value, image4.value)
    // save to database
}
*/
