//
//  FjontTextWrappingImages.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.11.2024.
//

import SwiftUI

struct FjontTextWrappingImages: View {
    var body: some View {
        VStack(spacing: 40) {
            
            //        You can \"wrap\" an image inside of text so you can concatenate itto other Text views.
            Text("Completed! ") +
            Text(Image(systemName: "checkmark.square.fill")).foregroundStyle(.green)
            
            + Text(" You can now continue.")
            
            Text(Image(systemName: "trash.circle.fill")).foregroundStyle(.red)
            + Text(" Are you sure you want to delete?")
        }
        .font(.title)
    }
}

#Preview {
    FjontTextWrappingImages()
}
