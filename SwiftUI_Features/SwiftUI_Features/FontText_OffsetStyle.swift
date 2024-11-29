//
//  FontText_OffsetStyle.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.11.2024.
//

import SwiftUI

struct FontText_OffsetStyle: View {
    // Set birthday to March 6, 1991
    @State private var birthday: Date = {
        //    You can use the offset function
        //    to calculate how much time is
        //    between two dates.
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter.date(from: "1991/03/06") ?? Date()
    }()
    
    //    These examples calculate the
    //    difference between Date.now
    //    and a birthday and format it in a
    //    Text view.
    var body: some View {
        VStack(spacing: 24.0) {
            //    Limit what you want to display
            //    with allowedFields.
            if #available(iOS 18.0, *) {
                Text(Date.now, format: .offset(to: birthday))
                Text(Date.now, format: .offset(to: birthday, allowedFields: [.year]))
                Text(Date.now, format: .offset(to: birthday, allowedFields: [.year, .month], maxFieldCount: 1))
            }
            
        }
        .font(.title)
    }
}

#Preview {
    FontText_OffsetStyle()
}
