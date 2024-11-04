//
//  NavLinkWithDifferentTypes.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.11.2024.
//

import SwiftUI

struct NavLinkWithDifferentTypes: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16.0) {
                NavigationLink(value: "NavigationLink 1") {
                    Text("Navigate with String")
                    //        iOS 16
                }
                NavigationLink(value: true) {
                    Text("Navigate with Bool")
                }
            }
            //        The navigation links will
            //        automatically link up to
            //        the navigation destination
            //        modifiers of the same
            //        type.
            .navigationDestination(for: String.self) { stringValue in
                Text("Value is: ") + Text("\(stringValue)").bold()
            }
            .navigationDestination(for: Bool.self) { boolValue in
                Text("Value is: ") + Text("\(boolValue.description)").bold()
            }
            .navigationTitle("Navigation Destination")
        }
        .font(.title)
    }
}

#Preview {
    NavLinkWithDifferentTypes()
}
