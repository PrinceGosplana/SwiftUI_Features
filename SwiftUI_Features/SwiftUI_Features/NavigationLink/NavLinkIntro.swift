//
//  NavLinkIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.11.2024.
//

import SwiftUI

struct NavLinkIntro: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                NavigationLink("Just Text", destination: SecondView())
                //        Use NavigationLink to navigate to a
                //        new view inside a NavigationStack.
                NavigationLink {
                    SecondView()
                } label: {
                    Label("Label", systemImage: "doc.text.fill")
                }
            }
            .navigationTitle("NavigationLink")
        }
        .font(.title)
    }
}

struct SecondView: View {
    var body: some View {
        VStack {
            Text("View 2")
                .font(.largeTitle)
        }
        .navigationTitle("Second View")
        //These are the basic
        //implementations using just text or
        //a label and a destination. The
        //destination can be any view.
    }
}

#Preview {
    NavLinkIntro()
}
