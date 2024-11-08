//
//  PhotosPickerIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.11.2024.
//

import PhotosUI
import SwiftUI

struct PhotosPickerIntro: View {
    @State private var photo: PhotosPickerItem?
    @State private var selectedImage: Image?
    
    var body: some View {
        VStack {
            PhotosPicker(selection: $photo,
                         matching: .images) {
                Text("Select a photo")
            }
            
            Spacer()
            if let selectedImage {
                Text("Selected Photo")
                selectedImage
                    .resizable()
                    .scaledToFit()
            }
            Spacer()
        }
        .font(.title)
        
        .onChange(of: photo) { _, newPhoto in
            if let newPhoto {
                Task {
                    selectedImage = await newPhoto.convert()
                }
            }
        }
    }
}

extension PhotosPickerItem {
    /// Load and return an image from a PhotosPickerItem
    @MainActor
    func convert() async -> Image {
        //The loadTransferable function attempts to load the selected
        //item(s) into memory so you can then convert them and
        //prepare them to show in a SwiftUI view.
        do {
            if let data = try await self.loadTransferable(type: Data.self) {
                if let uiImage = UIImage(data: data) {
                    return Image(uiImage: uiImage)
                }
            }
        } catch {
            print(error.localizedDescription)
        }
        
        return Image(systemName: "xmark.octagon")
    }
}
#Preview {
    PhotosPickerIntro()
}
