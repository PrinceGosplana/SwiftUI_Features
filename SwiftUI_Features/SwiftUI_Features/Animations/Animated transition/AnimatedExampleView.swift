//
//  AnimatedExampleView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 09.06.2024.
//

import SwiftUI

/// To implement it on your user interface you must:

/// 1 Define the namespace that will be used to synchronise the geometry of the views;
/// 2 Define the initial and final states of the views that will be animated;
/// 3 Use the proper view modifier to identify the initial and final states for the matched geometry transition to take effect;
/// 4 Trigger the transition.

struct AnimatedExampleView: View {
    // Variable to trigger the animated transition
    @State var isExpanded: Bool = true


    /// 1 Define an identifier for each view that will take place in the transition
    private var rectangleId = "Rectangle"

    /// Define a namespace where the identifiers of the group of views will be defined, using the @Namespace property wrapper
    @Namespace var expansionAnimation


    var body: some View {
        VStack {
            if isExpanded {
                smallSizeView()
                    .padding()
                Spacer()
            } else {
                largeSizeView()
            }
        }
//        .padding()
        // On tap the transition is triggered
        .onTapGesture {
            withAnimation {
                isExpanded.toggle()
            }
        }
    }

    @ViewBuilder
    func smallSizeView() -> some View {
        // Initial state of the view
        RoundedRectangle(cornerRadius: 25)
            .fill(.black)
            .frame(maxWidth: .infinity, maxHeight: 300)
        /// 3 Apply the .matchedGeometryEffect(id:in:properties:anchor:isSource:) modifier on each of the views that will be part of the animated transition
            .matchedGeometryEffect(id: rectangleId, in: expansionAnimation)
            .overlay {
                Text("Hello Developer")
                    .font(.headline)
                    .foregroundStyle(.white)
            }
    }

    @ViewBuilder
    func largeSizeView() -> some View {
        // Final state of the view
        RoundedRectangle(cornerRadius: 25)
            .fill(.black)
            .frame(maxWidth: .infinity, maxHeight: 400)
        /// 3 Apply the .matchedGeometryEffect(id:in:properties:anchor:isSource:) modifier on each of the views that will be part of the animated transition
            .matchedGeometryEffect(id: rectangleId, in: expansionAnimation)
            .overlay {
                Text("Hello Developer")
                    .font(.headline)
                    .foregroundStyle(.white)
            }
    }

}

#Preview {
    AnimatedExampleView()
}
