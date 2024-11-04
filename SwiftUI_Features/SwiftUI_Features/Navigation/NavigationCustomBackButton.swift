//
//  NavigationCustomBackButton.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.11.2024.
//

import SwiftUI

struct NavigationCustomBackButton: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go To Detail",
                           destination: Navigation_CustomBackButton_Detail())
            .font(.title)
            .navigationTitle("Navigation Views")
        }
    }
}

#Preview {
    NavigationCustomBackButton()
}

// Second Screen
struct Navigation_CustomBackButton_Detail: View {
    //Hide the system back
    //button and then use toolbar
    //modifier to add a leading
    //button.
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
        }
        .navigationTitle("Detail View")
        .navigationBarBackButtonHidden(true)
        //Toolbar buttons can’t
        //show text and images
        //at the same time.
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    Label("Back", systemImage: "arrow.left.circle")
                    //If you want text and
                    //image, then hide the
                    //whole nav bar
                    //(previous example).
                }
            }
        }
    }
}
