//
//  ExtractedView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 09.04.2024.
//

import SwiftUI

struct ExtractedView: View {

    let title: String
    let subtitle: String

    var body: some View {
        Text(title)
            .font(.largeTitle)
            .padding(.top, 50)
        Text(subtitle)
            .font(.callout)
    }
}


#Preview {
    ExtractedView(title: "Title", subtitle: "Subtitle")
}
