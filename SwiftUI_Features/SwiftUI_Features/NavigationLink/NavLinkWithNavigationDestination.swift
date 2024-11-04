//
//  NavLinkWithNavigationDestination.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.11.2024.
//

import SwiftUI

struct NavLinkWithNavigationDestination: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(value: "NavigationLink 1") {
                    //        A NavigationLink that
                    //        uses a value will not do
                    //        anything by itself. (Notice
                    //        there is no a destination
                    //        nor a view here.)
                    Text("Navigate 1")
                }
            }
            .navigationDestination(for: String.self) { stringValue in
                Text("Value is: ") + Text("\(stringValue)").bold()
            }
            //        There must be a
            //        navigationDestination
            //        modifier that is looking for
            //        the same type (String in
            //        this example).
            .navigationTitle("Navigation Destination")
        }
        .font(.title)
    }
}

#Preview {
    NavLinkWithNavigationDestination()
}
