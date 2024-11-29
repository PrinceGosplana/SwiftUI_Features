//
//  FontText_StopwatchStyle.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.11.2024.
//

import SwiftUI

struct FontText_StopwatchStyle: View {
    @State private var currentDate = Date()
    @State private var futureDate = Date().addingTimeInterval(131 * 60)
    
    //    The stopwatch function is
    //    another way to format
    //    intervals between two
    //    dates.
    
    var body: some View {
        VStack(spacing: 24.0) {
            if #available(iOS 18.0, *) {
                Text(futureDate, format: .stopwatch(startingAt: currentDate))
                Text(futureDate, format: .stopwatch(startingAt: currentDate, maxFieldCount: 1))
                Text(futureDate, format: .stopwatch(startingAt: currentDate, maxFieldCount: 2))
                Text(futureDate, format: .stopwatch(startingAt: currentDate, maxFieldCount: 3))
                Text(futureDate, format: .stopwatch(startingAt: currentDate, showsHours: false))
                Text(futureDate, format: .stopwatch(startingAt: currentDate, showsHours: false,
                                                    maxFieldCount: 1))
            }
        }
        .font(.title)
    }
}

#Preview {
    FontText_StopwatchStyle()
}
