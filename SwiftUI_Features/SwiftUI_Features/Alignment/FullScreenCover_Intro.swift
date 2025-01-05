//
//  FullScreenCover_Intro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 05.01.2025.
//

import SwiftUI

struct FullScreenCover_Intro: View {
    @State private var showDetailView = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Use fullScreenCover modifier to present another view as a full screen (push-out view).")
            Spacer()
            Button(action: {
                showDetailView = true
            }, label: {
                Text("Show Details")
            })
            Spacer()
        }
        .font(.title)
        .fullScreenCover(isPresented: $showDetailView) {
            FullScreenCoverDetailView()
        }
    }
}

struct FullScreenCoverDetailView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "macwindow.on.rectangle")
            Text("Use @Environment(\\.dismiss) to dismiss the view.")
            Spacer()
            Button(action: {
                dismiss()
            }, label: {
                Text("Dismiss")
            })
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    FullScreenCover_Intro()
}
