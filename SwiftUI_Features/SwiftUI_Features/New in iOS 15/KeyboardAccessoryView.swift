//
//  KeyboardAccessoryView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 30.08.2024.
//

import SwiftUI

enum Field {
    case suit
    case rank
}

struct FocusedFieldValue: FocusedValueKey {
    typealias Value = Field
}

extension FocusedValues {
    var field: FocusedFieldValue.Value? {
        get { self[FocusedFieldValue.self] }
        set { self[FocusedFieldValue.self] = newValue }
    }
}

struct KeyboardAccessoryView: View {
    var body: some View {
            KeyboardItemView()
            /*
            HStack {
                TextField("Suit", text: .constant(""))
                    .textFieldStyle(.roundedBorder)
            }
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("♣️", action: {})
                    Button("♥️", action: {})
                    Button("♠️", action: {})
                    Button("♦️", action: {})
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(1...30, id: \.self) { _ in
                                Circle()
                                    .fill(Color.purple)
                                    .frame(width: 40, height: 40)
                            }
                        }
                    }
                    
                }
            }
             */
    }
}

struct KeyboardItemView: View {

    @FocusedValue(\.field) var field

    var body: some View {
        HStack {
            TextField("Suit", text: .constant(""))
                .textFieldStyle(.roundedBorder)
                .focusedValue(\.field, .rank)
            TextField("Rank", text: .constant(""))
                .textFieldStyle(.roundedBorder)
                .focusedValue(\.field, .suit)
        }
        .toolbar {
            ToolbarItem(placement: .keyboard) {
                HStack(spacing: 0) {
                    if field == .rank {
                        Button {} label: {
                            Image(systemName: "person")
                                .foregroundStyle(.orange)
                        }
                    } else {
                        Button {} label: {
                            Image(systemName: "star")
                                .foregroundStyle(.orange)
                        }
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(1...30, id: \.self) { _ in
                                Circle()
                                    .fill(Color.purple)
                                    .frame(width: 40, height: 40)
                            }
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    KeyboardAccessoryView()
}
