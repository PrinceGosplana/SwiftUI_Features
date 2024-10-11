//
//  DetectingVisibleCells.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 11.10.2024.
//

import SwiftUI

struct DVCItem: Identifiable, Hashable {
    var id = UUID()
    var number: Int

    var name: String {
        "Item \(number)"
    }
}

let sampleItems = (0..<100).map { DVCItem(number: $0) }

struct Payload {
    var item: DVCItem
    var bounds: Anchor<CGRect>
}

struct VisibleItemsPreference: PreferenceKey {
    static var defaultValue: [Payload] = []
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value.append(contentsOf: nextValue())
    }
}

struct DetectingVisibleCells: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(sampleItems) { item in
                    Text(item.name)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .padding(.horizontal)
                        .anchorPreference(key: VisibleItemsPreference.self, value: .bounds, transform: { anchor in
                            [.init(item: item, bounds: anchor)]
                        })
                }
            }
        }
        .overlayPreferenceValue(VisibleItemsPreference.self, { value in
            GeometryReader { proxy in
                let myFrame = proxy.frame(in: .local)
                let arr = value.sorted(by: { $0.item.number < $1.item.number }).map { item in
                    let inBounds = myFrame.intersects(proxy[item.bounds])
                    return (inBounds: inBounds, item: item.item)
                }
                let texts: [Text] = arr.map { (inBounds: Bool, item: DVCItem) in
                    Text("\(item .number)")
                        .foregroundStyle(inBounds ? .primary : .secondary)
                }
                texts.joined(separator: Text(", "))
                    .foregroundStyle(.white)
                    .background(.black)
                    .frame(maxHeight: .infinity)
            }
        })
    }
}

extension [Text] {
    func joined(separator: Text) -> Text {
        guard let f = first else { return Text("") }
        return dropFirst().reduce(f, { $0 + separator + $1 })
    }
}

#Preview {
    DetectingVisibleCells()
}
