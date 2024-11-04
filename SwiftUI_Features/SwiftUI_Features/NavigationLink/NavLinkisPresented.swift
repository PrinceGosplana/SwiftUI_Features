//
//  NavLinkisPresented.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.11.2024.
//

import SwiftUI

struct NavLinkisPresented: View {
    @State private var showSheet = false
    @State private var navigate = false
    var body: some View {
        NavigationStack {
            VStack {
                Button("Show Sheet") { showSheet.toggle() }
                //    At this time, when a
                //    NavigationLink is used
                //    inside a sheet it will be
                //    disabled.
            }
            .navigationTitle("Navigate When True")
            .sheet(isPresented: $showSheet) {
                VStack(spacing: 16.0) {
                    NavigationLink(destination: Text("Destination from Link")) {
                        Text("Navigation Link")
                    }
                    Button("Button Link") {
                        showSheet = false
                        navigate = true
                    }
                }
                .presentationDetents([.height(240)])
                //    One solution is to
                //    combine a Button and the
                //    navigationDestination that
                //    uses the isPresented
                //    parameter.
            }
            .navigationDestination(isPresented: $navigate) {
                Text("Destination from Button")
            }
        }
        .font(.title)
    }
}

#Preview {
    NavLinkisPresented()
}
