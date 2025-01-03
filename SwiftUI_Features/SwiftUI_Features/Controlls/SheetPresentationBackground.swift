//
//  SheetPresentationBackground.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.01.2025.
//

import SwiftUI

struct SheetPresentationBackground: View {
    @State private var showSheet = false
    //    Use the presentation background modifier to set a style for your
    var body: some View {
        ZStack {
            Image(.previewSample2)
                .resizable()
                .ignoresSafeArea()
            Button("Show Sheet") {
                showSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
        }
        .sheet(isPresented: $showSheet) {
            VStack(spacing: 16.0) {
                Text("You can add different styles to the sheet, such as this material. The corner radius can also be customized now.")
                    .multilineTextAlignment(.center)
            }
            .padding()
            .presentationDetents([.medium, .large])
            .presentationBackground(.thinMaterial)
            .presentationCornerRadius(80)
            
        }
        .font(.title)
    }
}

#Preview {
    SheetPresentationBackground()
}
