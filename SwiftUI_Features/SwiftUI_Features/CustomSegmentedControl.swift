//
//  CustomSegmentedControl.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 19.07.2024.
//

import SwiftUI

enum Category: String, CaseIterable {
    case income = "Income"
    case expense = "Expense"
}

struct CustomSegmentedControl: View {

    @State private var selectedCategory: Category = .expense

    /// Animation
    @Namespace private var animation

    var body: some View {
        CustomControl()
    }

    @ViewBuilder
    func CustomControl() -> some View {
        HStack {
            ForEach(Category.allCases, id:\.self) { category in
                Text(category.rawValue)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background {
                        if category == selectedCategory {
                            Capsule()
                                .fill(.blue)
                            /// the magic is here
                                .matchedGeometryEffect(id: "ACTIVETAB", in: animation)
                        }
                    }
                    .contentShape(.capsule)
                    .onTapGesture {
                        withAnimation(.snappy) {
                            selectedCategory = category
                        }
                    }
            }
        }
        .background(.yellow.opacity(0.15), in: .capsule)
    }
}

#Preview {
    CustomSegmentedControl()
}
