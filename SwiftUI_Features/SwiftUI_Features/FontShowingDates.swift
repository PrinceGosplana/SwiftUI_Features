//
//  FontShowingDates.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.11.2024.
//

import SwiftUI

struct FontShowingDates: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text(Date(), style: Text.DateStyle.date)
            Text(Date(), style: Text.DateStyle.time)
            Text(Date().addingTimeInterval(-6000), style: .offset)
            Text(Date().addingTimeInterval(-6000), style: Text.DateStyle.relative)
            Text(Date().addingTimeInterval(-6000), style: Text.DateStyle.timer)
            Text(Date()...Date().addingTimeInterval(6000))
        }
        .font(.title)
    }
}

#Preview {
    FontShowingDates()
}
