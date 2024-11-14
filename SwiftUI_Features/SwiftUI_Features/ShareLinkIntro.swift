//
//  ShareLinkIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 14.11.2024.
//

import SwiftUI

struct ShareLinkIntro: View {
    var body: some View {
        Form {
            ShareLink(item: "Hello and welcome!")
            
            ShareLink("Share Text", item: "Hello and welcome!")
            ShareLink(item: "Hello and welcome!") {
                Label("Share Text", systemImage: "square.and.arrow.up.circle")
            }
            
            ShareLink("Share Text", item: "Hello and welcome!",
                      subject: Text("Subject"),
                      message: Text("This is the message"),
                      preview: SharePreview(Text("Share Preview"),
                                            image: Image(systemName: "doc.richtext"),
                                            icon: Image(systemName: "doc.richtext")))
            
            Section("Collections") {
                ShareLink("Share Collections", items: ["Milk", "Eggs", "Bread"])}
        }
        
        Section("Photo") {
            ShareLink(item: Image(systemName: "globe.americas.fill"),
                      preview: SharePreview("The Globe",
                                            image: Image(systemName: "globe.americas.fill"))) {
                Label("Share Photo", systemImage: "globe.americas.fill")
            }
        }
        .headerProminence(.increased)
        .font(.title)
    }
}

#Preview {
    ShareLinkIntro()
}
