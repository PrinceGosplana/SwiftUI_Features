//
//  FontDateFormatting.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 26.11.2024.
//

import SwiftUI

struct FontDateFormatting: View {
    var body: some View {
        VStack(spacing: 10) {
            //        Use the formatted modifier on dates to format them the way you want
            
            Text(Date().formatted())
            Group {
                
                Group {
                    Text(Date().formatted(date: .abbreviated, time: .omitted))
                    Text(Date().formatted(date: .complete, time: .omitted))
                    Text(Date().formatted(date: .omitted, time: .omitted))
                    Text(Date().formatted(date: .long, time: .omitted))
                    Text(Date().formatted(date: .numeric, time: .omitted))
                }
                Group {
                    
                    Text(Date().formatted(date: .omitted, time: .complete))
                    Text(Date().formatted(date: .omitted, time: .shortened))
                    Text(Date().formatted(date: .omitted, time: .standard))
                }
            }
        }
        .font(.title2)
        .font(.title)
    }
}

#Preview {
    FontDateFormatting()
}
