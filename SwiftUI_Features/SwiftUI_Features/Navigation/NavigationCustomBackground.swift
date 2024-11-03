//
//  NavigationCustomBackground.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.11.2024.
//

import SwiftUI

struct NavigationCustomBackground: View {
    var body: some View {
        NavigationStack {
            VStack {
                Divider()
                //        This background modifier will
                //        automatically ignore all safe
                //        area edges. That’s why it
                //        expands into the nav bar
                //        area to create your nav
                //        background.
                    .background(
                        LinearGradient(colors: [.green, .blue],
                                       startPoint: .leading,
                                       endPoint: .trailing)
                        .opacity(0.5)
                        .shadow(.drop(radius: 2, y: 2)),
                        //        Use this optional parameter
                        //        to specify which edges the
                        //        background should ignore.
                        //        By default it ignores all
                        //        edges.
                        ignoresSafeAreaEdges: .top)
                Spacer()
            }
            .navigationTitle("Custom Background")
        }
    }
}

#Preview {
    NavigationCustomBackground()
}
