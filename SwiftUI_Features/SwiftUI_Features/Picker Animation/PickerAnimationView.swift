//
//  PickerAnimationView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 16.05.2024.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var title: String
}

/*
struct SelectionID: AlignmentID {
    static func defaultValue(in context: ViewDimensions) -> CGFloat {
        context[HorizontalAlignment.center]
    }
}

extension HorizontalAlignment {
    static let selection = HorizontalAlignment(SelectionID.self)
}
*/

struct SelectedItemKey: PreferenceKey {
    static var defaultValue: CGRect? = nil
    static func reduce(value: inout CGRect?, nextValue: () -> CGRect?) {
        value = value ?? nextValue()
    }
}

struct AnimationPicker: View {

    @State private var selection: UUID?

    var items = ["Inbox", "Sent", "Archive"].map {
        Item(title: $0)
    }
    @Namespace private var namespace
    
    var body: some View {
        let selectedItem = selection ?? items[0].id

        HStack {
            ForEach(items) { item in
                Button(item.title) {
                    selection = item.id
                }
                .padding(.bottom, 4)
                .overlay {
                    if selectedItem == item.id {
                        GeometryReader { proxy in
                            Color.clear
                                .preference(key: SelectedItemKey.self, value: proxy.frame(in: .global))
                        }
                    }
                }
            }
        }
        .overlayPreferenceValue(SelectedItemKey.self, alignment: .bottom, { value in
            if let rect = value {
                GeometryReader { proxy in
                    let selfFrame = proxy.frame(in: .global)
                    let offset = rect.minX - selfFrame.minX

                        Color.accentColor
                            .frame(width: rect.width)
//                            .offset(x: offset)
                        // or instead of offset we can use
                            .padding(.leading, offset)

                }
                .frame(height: 1)
            }
        })
        .buttonStyle(.plain)
        .animation(.default, value: selectedItem)
    }
}

struct PickerAnimationView: View {
    var body: some View {
        VStack {
            AnimationPicker()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    PickerAnimationView()
}
