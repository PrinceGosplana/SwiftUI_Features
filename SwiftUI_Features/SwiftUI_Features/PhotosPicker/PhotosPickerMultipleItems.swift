//
//  PhotosPickerMultipleItems.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.11.2024.
//

import PhotosUI
import SwiftUI

struct PhotosPickerMultipleItems: View {
    @State private var photos: [PhotosPickerItem] = []
    @State private var selectedImages: [Image] = []
    
    var body: some View {
        VStack {
            //    Binding to an array of
            //    PhotosPickerItem types will
            //    allow the user to select
            //    multiple items now.
            PhotosPicker(
                selection: $photos,
                matching: .images
            ) {
                Text("Photos")
            }
            if (photos.count > 0) {
                Text("Selected Photos")
                List {
                    ForEach(0..<selectedImages.count, id: \.self) { index in
                        selectedImages[index]
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
            Spacer()
        }
        .font(.title)
        .onChange(of: photos) { _, newPhotos in
            Task {
                for newPhoto in newPhotos {
                    await selectedImages.append(newPhoto.convert())
                }
            }
        }
    }
}

#Preview {
    PhotosPickerMultipleItems()
}
