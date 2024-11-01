//
//  BackgroundVisibilityView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 01.11.2024.
//

import SwiftUI

struct BackgroundVisibilityView: View {
    private var stringArray = ["Evans", "Lemuel", "Mark", "Durtschi", "Chase", "Adam", "Rodrigo"]
    @State private var show = false
    @State private var showSystemBackground: Visibility = .visible
    var body: some View {
        List(stringArray, id: \.self) { string in
            Text(string)
        }
        .background(Color.green.opacity(0.25))
        .scrollContentBackground(showSystemBackground)
        //    Normally, you can’t see
        //    backgrounds on lists
        //    because it is covered up
        //    by the system
        //    background.
        .safeAreaInset(edge: .bottom) {
            VStack {
                Divider()
                Button {
                    show.toggle()
                    showSystemBackground = show ? .hidden : .visible
                } label: {
                    if show {
                        Image(systemName: "eye.slash")
                    } else {
                        Image(systemName: "eye")
                            .buttonStyle(.borderedProminent)
                    }
                }
                .symbolVariant(.fill)
                .padding()
            }
            .background(.thinMaterial)
        }
        .font(.title)
        //    You can hide the system
        //    background using the
        //    scrollContentBackground
        //    modifier and setting it to
        //    hidden so your
        //    background will be
        //    visible.
    }
}

#Preview {
    BackgroundVisibilityView()
}
