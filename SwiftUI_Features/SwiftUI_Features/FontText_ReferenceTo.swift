//
//  FontText_ReferenceTo.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.11.2024.
//

import SwiftUI

struct FontText_ReferenceTo: View {
    @State private var pastDate = Date().addingTimeInterval(-20 * 60)
    @State private var currentDate = Date()
    @State private var futureDate = Date().addingTimeInterval(2 * 24 * 60 * 60)
    
    
    var body: some View {
        VStack(spacing: 24.0) {
            if #available(iOS 18.0, *) {
                Text(.currentDate, format: .reference(to: pastDate))
                
                Text(.currentDate, format: .reference(to: currentDate))
                
                Text(.currentDate, format: .reference(to: futureDate))
            }
        }
        //    SwiftUI can format and
        //    localize references to
        //    different times, whether
        //    now, in the past or in the
        //    future through the Text
        //    format’s reference
        //    function.
        .font(.title)
    }
}

#Preview {
    FontText_ReferenceTo()
}
