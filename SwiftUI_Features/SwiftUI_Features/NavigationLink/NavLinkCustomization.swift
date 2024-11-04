//
//  NavLinkCustomization.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.11.2024.
//

import SwiftUI

struct NavLinkCustomization: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                NavigationLink(destination: SecondView()) {
                    Text("Navigate")
                        .foregroundStyle(.white)
                        .padding()
                }
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                NavigationLink(destination: SecondView()) {
                    LabeledContent("Navigate") {
                        Image(systemName: "chevron.right")
                        //        The trailing closure is the
                        //        label parameter. This allows
                        //        you to compose any view
                        //        that will navigate you.
                            .foregroundStyle(.red)
                    }
                    .padding()
                }
            }
            .navigationTitle("NavigationLink")
        }
        .font(.title)
    }
}

#Preview {
    NavLinkCustomization()
}
