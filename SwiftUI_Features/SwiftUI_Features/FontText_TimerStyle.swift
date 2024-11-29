//
//  FontText_TimerStyle.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.11.2024.
//

import SwiftUI

struct FontText_TimerStyle: View {
    @State private var tenSeconds = Date().addingTimeInterval(10)
    @State private var currentDate = Date()
    @State private var futureDate = Date().addingTimeInterval(131 * 60)
    //    The timer function not only formats the date but actively counts up or down too.  Counts up to 10 seconds.
    
    var body: some View {
        VStack(spacing: 24.0) {
            if #available(iOS 18.0, *) {
                Text(.currentDate, format: .timer(countingUpIn: currentDate..<tenSeconds))
                Text(.currentDate, format: .timer(countingDownIn: currentDate..<tenSeconds))
                Text(.currentDate, format: .timer(countingDownIn: currentDate..<futureDate))
                Text(.currentDate, format: .timer(countingDownIn: currentDate..<futureDate,
                                                  showsHours: false))
                Text(.currentDate, format: .timer(countingDownIn: currentDate..<futureDate,
                                                  showsHours: false, maxFieldCount: 1))
                Text(.currentDate, format: .timer(countingDownIn: currentDate..<futureDate,
                                                  showsHours: true, maxFieldCount: 2))
            }
        }
        .font(.title)
    }
}

#Preview {
    FontText_TimerStyle()
}
