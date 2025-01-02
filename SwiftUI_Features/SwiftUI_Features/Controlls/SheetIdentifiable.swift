//
//  SheetIdentifiable.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.01.2025.
//

import SwiftUI

struct DetailInfo: Identifiable {
    var id = UUID() // Conform to Identifiable
    let image: Image
}

struct SheetIdentifiable: View {
    // Create State var for the data
    @State private var details: DetailInfo? = nil
    var body: some View {
        Button("Show Details") {
            // Trigger showing the sheet
            details = DetailInfo(image: Image(systemName: "star.circle"))
        }
        // Listen for State variable changes to non-nil
        .sheet(item: $details) { detailInfo in
            DetailSheet(details: detailInfo)
        }
    }
}
struct DetailSheet: View {
    @Environment(\.dismiss) var dismiss
    let details: DetailInfo
    var body: some View {
        VStack(spacing: 20) {
            details.image.font(.largeTitle).foregroundStyle(.red)
            Spacer()
            Button("Dismiss") { dismiss() }
                .tint(.red)
        }.padding(.top, 40)
    }
}

#Preview {
    SheetIdentifiable()
}
