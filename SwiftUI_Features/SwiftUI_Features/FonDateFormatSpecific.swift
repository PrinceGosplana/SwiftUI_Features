//
//  FonDateFormatSpecific.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 27.11.2024.
//

import SwiftUI

struct FonDateFormatSpecific: View {
    var body: some View {
        VStack(spacing: 10) {
            //        Use the formatted modifier on dates to show just specific parts of a date time
            
            Text(Date().formatted())
            
            Group {
                Text("**Week of Year:** \(Date().formatted(.dateTime.week()))")
                Text("**Week of Month:** \(Date().formatted(.dateTime.week(.weekOfMonth)))")
                Text("**Weekday:** \(Date().formatted(.dateTime.weekday()))")
                Text("**Weekday:** \(Date().formatted(.dateTime.weekday(.wide)))")
                Text("**Day #:** \(Date().formatted(.dateTime.day(.ordinalOfDayInMonth)))")
            }
            //        Ordering Doesn't Matter
            Group {
                Text(Date().formatted(.dateTime.day().month(.wide).year()))
            }
        }
        .font(.title)
    }
}

#Preview {
    FonDateFormatSpecific()
}
